Module:    gtk-widgets
Copyright:    Original Code is Copyright (c) 1995-2004 Functional Objects, Inc.
              All rights reserved.
License:      Functional Objects Library Public License Version 1.0
Dual-license: GNU Lesser General Public License
Warranty:     Distributed WITHOUT WARRANTY OF ANY KIND

// This file is automatically generated from "gtkhscrollbar.h"; do not edit.

define C-pointer-type <GtkHScrollbar*> => <GtkHScrollbar>;
define C-pointer-type <GtkHScrollbar**> => <GtkHScrollbar*>;
define C-pointer-type <GtkHScrollbarClass*> => <GtkHScrollbarClass>;
define C-pointer-type <GtkHScrollbarClass**> => <GtkHScrollbarClass*>;

define C-struct <_GtkHScrollbar>
  sealed inline-only slot scrollbar-value :: <GtkScrollbar>;
  pointer-type-name: <_GtkHScrollbar*>;
  c-name: "struct _GtkHScrollbar";
end;

define C-struct <_GtkHScrollbarClass>
  sealed inline-only slot parent-class-value :: <GtkScrollbarClass>;
  pointer-type-name: <_GtkHScrollbarClass*>;
  c-name: "struct _GtkHScrollbarClass";
end;

define inline-only C-function gtk-hscrollbar-get-type
  result value :: <GtkType>;
  c-name: "gtk_hscrollbar_get_type";
end;

define inline-only C-function gtk-hscrollbar-new
  parameter adjustment1 :: <GtkAdjustment*>;
  result value :: <GtkWidget*>;
  c-name: "gtk_hscrollbar_new";
end;

define inline constant <GtkHScrollbar> = <_GtkHScrollbar>;
define inline constant <GtkHScrollbarClass> = <_GtkHScrollbarClass>;
define sealed domain make (singleton(<_GtkHScrollbar*>));
define sealed domain initialize (<_GtkHScrollbar*>);
define sealed domain make (singleton(<_GtkHScrollbarClass*>));
define sealed domain initialize (<_GtkHScrollbarClass*>);
