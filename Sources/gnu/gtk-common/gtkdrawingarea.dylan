Module:    gtk-common
Copyright:    Original Code is Copyright (c) 1995-2004 Functional Objects, Inc.
              All rights reserved.
License:      Functional Objects Library Public License Version 1.0
Dual-license: GNU Lesser General Public License
Warranty:     Distributed WITHOUT WARRANTY OF ANY KIND

// This file is automatically generated from "gtkdrawingarea.h"; do not edit.

define C-pointer-type <GtkDrawingArea*> => <GtkDrawingArea>;
define C-pointer-type <GtkDrawingArea**> => <GtkDrawingArea*>;
define C-pointer-type <GtkDrawingAreaClass*> => <GtkDrawingAreaClass>;
define C-pointer-type <GtkDrawingAreaClass**> => <GtkDrawingAreaClass*>;

define C-struct <_GtkDrawingArea>
  sealed inline-only slot widget-value   :: <GtkWidget>;
  sealed inline-only slot draw-data-value :: <gpointer>;
  pointer-type-name: <_GtkDrawingArea*>;
  c-name: "struct _GtkDrawingArea";
end;

define C-struct <_GtkDrawingAreaClass>
  sealed inline-only slot parent-class-value :: <GtkWidgetClass>;
  pointer-type-name: <_GtkDrawingAreaClass*>;
  c-name: "struct _GtkDrawingAreaClass";
end;

define inline-only C-function gtk-drawing-area-get-type
  result value :: <guint>;
  c-name: "gtk_drawing_area_get_type";
end;

define inline-only C-function gtk-drawing-area-new
  result value :: <GtkWidget*>;
  c-name: "gtk_drawing_area_new";
end;

define inline-only C-function gtk-drawing-area-size
  parameter darea1     :: <GtkDrawingArea*>;
  parameter width2     :: <gint>;
  parameter height3    :: <gint>;
  c-name: "gtk_drawing_area_size";
end;

define inline constant <GtkDrawingArea> = <_GtkDrawingArea>;
define inline constant <GtkDrawingAreaClass> = <_GtkDrawingAreaClass>;
define sealed domain make (singleton(<_GtkDrawingArea*>));
define sealed domain initialize (<_GtkDrawingArea*>);
define sealed domain make (singleton(<_GtkDrawingAreaClass*>));
define sealed domain initialize (<_GtkDrawingAreaClass*>);
