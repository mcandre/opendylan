Module: dfmc-c-back-end
Author: Jonathan Bachrach
Copyright:    Original Code is Copyright (c) 1995-2004 Functional Objects, Inc.
              All rights reserved.
License:      Functional Objects Library Public License Version 1.0
Dual-license: GNU Lesser General Public License
Warranty:     Distributed WITHOUT WARRANTY OF ANY KIND

define method external-lambda? (o :: <&c-callable-function>) => (well?)
  o.binding-name
end method;


define method emit-parameter-type
    (back-end :: <c-back-end>, stream :: <stream>, 
     o :: <&raw-struct-type>, #key index :: false-or(<integer>))
  format-emit*(back-end, stream, "^", o);
end method;

// TODO: Maybe move register allocation up into emit-lambda-body so that
// all the methods on emit-lambda-body-using-function share that code.

define method emit-lambda-body-using-function
    (back-end :: <c-back-end>, stream :: <stream>, o :: <&iep>,
     function :: <&c-callable-function>)
  dynamic-bind (*current-environment* = o.environment)
    allocate-registers(function); 
    write(stream, "{\n");
    for (parameter in o.parameters,
	 type in function.c-signature.^signature-required)
      if (instance?(type, <&raw-aggregate-type>))
	write(stream, "  void * ");
	format-emit*(back-end, stream, "% = ", parameter);
	write(stream, "&tmp_");
	format-emit*(back-end, stream, "%", parameter);
	write(stream, ";\n");
      end;
    end;
    for (tmp in o.environment.temporaries)
      if (used?(tmp))
	emit-local-definition(back-end, stream, tmp);
      end if;
    end for;
    unless (empty?(o.environment.closure))
      format-emit*(back-end, stream, "\t~\n", $capture-environment-string);
    end unless;
    write-element(stream, '\n');
    emit-computations(back-end, stream, 1, o.body, #f);
    write(stream, "}\n");
  end dynamic-bind;
end method emit-lambda-body-using-function;


define method emit-lambda-interface-using-function
    (back-end :: <c-back-end>, stream :: <stream>, o :: <&iep>,
     fun :: <&c-callable-function>)
 => ();
  emit-c-callable-lambda-interface
    (back-end, stream, o, fun, current-os-name());
end;

define method emit-c-callable-lambda-interface
    (back-end :: <c-back-end>, stream :: <stream>, o :: <&iep>,
     fun :: <&c-callable-function>, os :: <object>)
  let global-name = fun.binding-name;
  unless (global-name)
    write(stream, "static ");
  end;
  emit-return-types(back-end, stream, o);
  format-emit*(back-end, stream, " ^ ", o);
  if (fun.parameters)
    emit-parameters(back-end, stream, o, o.parameters, fun.c-signature);
  else
    emit-signature-types(back-end, stream, o, fun.signature-spec, fun.c-signature);
  end if;
end method;

define method emit-c-callable-lambda-interface
    (back-end :: <c-back-end>, stream :: <stream>, o :: <&iep>,
     fun :: <&c-callable-function>, os == #"win32")
  let global-name = fun.binding-name;
  unless (global-name)
    write(stream, "static ");
  end;
  emit-return-types(back-end, stream, o);
  unless (empty?(fun.c-modifiers))
    format-emit*(back-end, stream, " ~", fun.c-modifiers)
  end;
  format-emit*(back-end, stream, " ^ ", o);
  if (fun.parameters)
    emit-parameters(back-end, stream, o, o.parameters, fun.c-signature);
  else
    emit-signature-types(back-end, stream, o, fun.signature-spec, fun.c-signature);
  end if;
end method;

define method emit-c-callable-lambda-interface
    (back-end :: <c-back-end>, stream :: <stream>, o :: <&iep>,
     fun :: <&c-callable-function>, os == #"macos7")
  let modifiers? = ~empty?(fun.c-modifiers);
  let global-name = fun.binding-name;
  if (modifiers?)
    write(stream, "#pragma only_std_keywords off\n");
  end;
  // !@#$ is this right for the mac?  It might need to com after the modifiers.
  unless (global-name)
    write(stream, "static ");
  end;
  if (modifiers?)
    format-emit*(back-end, stream, " ~", fun.c-modifiers)
  end;
  emit-return-types(back-end, stream, o);
  format-emit*(back-end, stream, " ^ ", o);
  if (fun.parameters)
    emit-parameters(back-end, stream, o, o.parameters, fun.c-signature);
  else
    emit-signature-types(back-end, stream, o, fun.signature-spec, fun.c-signature);
  end if;
  if (modifiers?)
    write(stream, "\n#pragma only_std_keywords reset\n");
  end;
end method;




// eof
