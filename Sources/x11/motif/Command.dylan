Module:    Motif
Copyright:    Original Code is Copyright (c) 1995-2004 Functional Objects, Inc.
              All rights reserved.
License:      Functional Objects Library Public License Version 1.0
Dual-license: GNU Lesser General Public License
Warranty:     Distributed WITHOUT WARRANTY OF ANY KIND

// This file is automatically generated from "Command.h"; do not edit.

//	RCSfile: Command.h,v 
//	Revision: 1.13 
//	Date: 93/03/03 16:23:37 
define C-variable xmCommandWidgetClass :: <WidgetClass>
  c-name: "xmCommandWidgetClass";
end;
define C-subtype <XmCommandWidgetClass> ( <C-void*> ) end;
define C-subtype <XmCommandWidget> ( <C-void*> ) end;

define inline-only function XmIsCommand (w);
  (XtIsSubclass(w, xmCommandWidgetClass()))
end;

define inline-only C-function XmCreateCommand
  parameter parent     :: <Widget>;
  parameter name       :: <X-String>;
  parameter al         :: <ArgList>;
  parameter ac         :: <C-Cardinal>;
  result value :: <Widget>;
  c-name: "XmCreateCommand";
end;

define inline-only C-function XmCommandGetChild
  parameter widget     :: <Widget>;
  parameter child      :: <C-unsigned-char>;
  result value :: <Widget>;
  c-name: "XmCommandGetChild";
end;

define inline-only C-function XmCommandSetValue
  parameter widget     :: <Widget>;
  parameter value      :: <XmString>;
  c-name: "XmCommandSetValue";
end;

define inline-only C-function XmCommandAppendValue
  parameter widget     :: <Widget>;
  parameter value      :: <XmString>;
  c-name: "XmCommandAppendValue";
end;

define inline-only C-function XmCommandError
  parameter widget     :: <Widget>;
  parameter error      :: <XmString>;
  c-name: "XmCommandError";
end;

define inline-only C-function XmCreateCommandDialog
  parameter ds-p       :: <Widget>;
  parameter name       :: <X-String>;
  parameter fsb-args   :: <ArgList>;
  parameter fsb-n      :: <C-Cardinal>;
  result value :: <Widget>;
  c-name: "XmCreateCommandDialog";
end;

