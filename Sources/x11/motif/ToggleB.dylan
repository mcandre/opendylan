Module:    Motif
Copyright:    Original Code is Copyright (c) 1995-2004 Functional Objects, Inc.
              All rights reserved.
License:      Functional Objects Library Public License Version 1.0
Dual-license: GNU Lesser General Public License
Warranty:     Distributed WITHOUT WARRANTY OF ANY KIND

// This file is automatically generated from "ToggleB.h"; do not edit.

//	RCSfile: ToggleB.h,v 
//	Revision: 1.12 
//	Date: 93/03/03 16:35:46 
define C-variable xmToggleButtonWidgetClass :: <WidgetClass>
  c-name: "xmToggleButtonWidgetClass";
end;
define C-subtype <XmToggleButtonWidgetClass> ( <C-void*> ) end;
define C-subtype <XmToggleButtonWidget> ( <C-void*> ) end;

define inline-only function XmIsToggleButton (w);
  XtIsSubclass(w, xmToggleButtonWidgetClass())
end;

define inline-only C-function XmToggleButtonGetState
  parameter w          :: <Widget>;
  result value :: <X-Boolean>;
  c-name: "XmToggleButtonGetState";
end;

define inline-only C-function XmToggleButtonSetState
  parameter w          :: <Widget>;
  parameter newstate   :: <X-Boolean>;
  parameter notify     :: <X-Boolean>;
  c-name: "XmToggleButtonSetState";
end;

define inline-only C-function XmCreateToggleButton
  parameter parent     :: <Widget>;
  parameter name       :: <C-string>;
  parameter arglist    :: <Arg*>;
  parameter argCount   :: <C-Cardinal>;
  result value :: <Widget>;
  c-name: "XmCreateToggleButton";
end;

