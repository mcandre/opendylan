Module:   projects-implementation
Synopsis: How to compile & test a source fragment as though it were a library.
Author:   Steve Rowley, Keith Playford, Jonathan Bachrach
Copyright:    Original Code is Copyright (c) 1995-2004 Functional Objects, Inc.
              All rights reserved.
License:      Functional Objects Library Public License Version 1.0
Dual-license: GNU Lesser General Public License
Warranty:     Distributed WITHOUT WARRANTY OF ANY KIND

///
/// Naming conventions.  
///
/// (The tempation to make scratch'n'sniff jokes is almost irresistible!)
///
define constant $scratch-module-name$  :: <symbol> = #"scratch-module";

// For the back-end, which wants names for source-records.
// In a kinder-gentler-world, we'd assign gensymmish names to source records,
// and maintain a table mapping from names to C output for the back end.
define constant $scratch-lib+mod-def-file$ :: <string> = "scratch-lib+mod";
define constant $scratch-source-file$      :: <string> = "scratch-source";


define class <template-project> (<project>)
  constant slot template-project-template,
    required-init-keyword: template:;
end class;

define method project-key? (project :: <template-project>, key)
 => (result :: singleton(#f))
  #f
end method;

define function scratch-lib+mod-template ()
  // The contents of the (assumed) library & module definition file.
    #{ define library scratch-library
         use dylan;
       end;
       define module scratch-module
         use dylan;
         use dylan-extensions; // function, subclass, <abstract-integer>, etc.
         use dylan-c-ffi;
       end; };
end function;

define method project-current-source-records (project :: <template-project>)
 => sr*;
  list(make(<template-source-record>,                 // Lib+mod defns
	    template: scratch-lib+mod-template,
	    name:     $scratch-lib+mod-def-file$,
	    module:   #"dylan-user"),
       make(<template-source-record>,                 // Actual source
	    template: method () template-project-template(project) end,
	    name:     $scratch-source-file$,
	    module:   $scratch-module-name$))
end;


define class <string-template-project> (<project>)
  constant slot project-current-source-records,
    required-init-keyword: source-records:;
end class;

define method project-key? (project :: <string-template-project>, key)
 => (result :: singleton(#f))
  #f
end method;

define constant $scratch-lib+mod-bv
  = as(<byte-vector>,
       "define library scratch-library\n"
       "  use dylan;\n"
       "end;\n"
       "define module scratch-module\n"
       "  use dylan;\n"
       "  use dylan-extensions;\n"
       "  use dylan-c-ffi;\n"
       " end;\n");

// We don't implement the full source record protocol, just what's needed
// for testing, so don't call these "<string-source-records>"...
define class <string-template-source-record> (<source-record>)
  constant slot source-record-contents :: <byte-vector>,
    required-init-keyword: contents:;
  constant slot source-record-module-name :: <symbol>,
    required-init-keyword: module:;
  // Name for this source record (more conventionally a file name base).
  // Used for name of init function in c-back-end link phase, as well as
  // giving the source records names for printing purposes.
  constant slot source-record-name :: <string>,
    required-init-keyword: name:;
end class;

define method print-object (ssr :: <string-template-source-record>, s :: <stream>) => ()
  format(s, "{Test SR: %s}", source-record-name(ssr))
end;

define method call-with-source-record-input-stream 
    (fn :: <function>, ssr :: <string-template-source-record>, #key)
  fn(make(<string-stream>, contents: as(<string>, ssr.source-record-contents)))
end method;

define method project-source-record-id (project :: <project>,
					sr :: <string-template-source-record>)
 => (id :: <string>);
  source-record-name(sr)
end method;


define method make (c == <string-template-project>, #rest initargs,
		    #key template :: <string>, #all-keys) 
 => (res)
  apply(next-method, c,
	source-records: list(make(<string-template-source-record>,
				  contents: $scratch-lib+mod-bv,
				  name: $scratch-lib+mod-def-file$,
				  module: #"dylan-user"),
			     make(<string-template-source-record>,
				  contents: as(<byte-vector>, template),
				  name: $scratch-source-file$,
				  module: $scratch-module-name$)),
	initargs)
end method;



///
/// The main entry point.
///

define method project-class-for-template (template :: <function>)
  <template-project>
end method;

define method project-class-for-template (template :: <string>)
  <string-template-project>
end method;

define function compile-template 
    (template,
     #key compiler :: <function> = compile-library,
          processor, operating-system, mode)
    => (context, sr)
  // Compile a template in a scratch library & module: compile-template(#{1});.
  // Give compiler: compile-library-until-optimized to get optimized DFM only.
  let project = make(project-class-for-template(template),
		     template: template,
		     processor: processor,
		     operating-system: operating-system,
		     mode: mode);
  block ()
    if (compiler == compile-library)
      compile-library(project)
    else
      // Else some internal compiler function, have to set up for it.
      canonicalize-project-sources(project);
      compiler(project.project-current-compilation-context)
    end;
    let context = project.project-current-compilation-context;
    let sr* = compilation-context-sources(context);
    debug-assert(size(sr*) == 2);
    values(context, sr*[1]); // sr*[0] is the module def.
  cleanup
    close-project(project);
  end block
end;

// This is only used for setting up a compiler testing environment
// Returns a (randomly-chosen) dylan library context for running compiler
// tests in.
define function dylan-library-compilation-context ()
  any?(method (project)
	 let context = project.project-current-compilation-context;
	 dylan-library-compilation-context?(context) & context
       end,
       *all-open-projects*);
end function;
