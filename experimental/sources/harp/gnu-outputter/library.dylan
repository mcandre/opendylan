module:    dylan-user
Synopsis:  GNU mnemonic assembler output from harp for i486
Author:    Nosa Omo
Copyright:    Original Code is Copyright (c) 1995-2004 Functional Objects, Inc.
              All rights reserved.
License:      Functional Objects Library Public License Version 1.0
Dual-license: GNU Lesser General Public License
Warranty:     Distributed WITHOUT WARRANTY OF ANY KIND


define library gnu-outputter
  use functional-dylan;
  use collections;
  use io;
  use big-integers;
  use operating-system;
  use harp;
  use binary-manager;
  use binary-builder;
  use binary-outputter;

  export gnu-outputter;
end library;

define module gnu-outputter
  use functional-dylan;
  use dylan-extensions;
  use functional-extensions;
  use byte-vector;
  use format;
  use format-out;
  use streams;
  use streams-internals, import: {<byte-file-stream>, <byte-char-file-stream>};
  use operating-system;
  use harp-for-extenders;
  use binary-manager;
  use binary-builder;
  use binary-outputter;

end module;
