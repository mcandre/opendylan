Module:    gtk-widgets
Copyright:    Original Code is Copyright (c) 1995-2004 Functional Objects, Inc.
              All rights reserved.
License:      Functional Objects Library Public License Version 1.0
Dual-license: GNU Lesser General Public License
Warranty:     Distributed WITHOUT WARRANTY OF ANY KIND

// This file is automatically generated from "gtkclist.h"; do not edit.

// enum GtkCellType:
define C-pointer-type <GtkCellType*> => <GtkCellType>;
define C-pointer-type <GtkCellType**> => <GtkCellType*>;
define inline-only constant $GTK-CELL-EMPTY = -1 + 1;
define inline-only constant $GTK-CELL-TEXT = $GTK-CELL-EMPTY + 1;
define inline-only constant $GTK-CELL-PIXMAP = $GTK-CELL-TEXT + 1;
define inline-only constant $GTK-CELL-PIXTEXT = $GTK-CELL-PIXMAP + 1;
define inline-only constant $GTK-CELL-WIDGET = $GTK-CELL-PIXTEXT + 1;

// enum GtkCListDragPos:
define C-pointer-type <GtkCListDragPos*> => <GtkCListDragPos>;
define C-pointer-type <GtkCListDragPos**> => <GtkCListDragPos*>;
define inline-only constant $GTK-CLIST-DRAG-NONE = -1 + 1;
define inline-only constant $GTK-CLIST-DRAG-BEFORE = $GTK-CLIST-DRAG-NONE + 1;
define inline-only constant $GTK-CLIST-DRAG-INTO = $GTK-CLIST-DRAG-BEFORE + 1;
define inline-only constant $GTK-CLIST-DRAG-AFTER = $GTK-CLIST-DRAG-INTO + 1;

// enum GtkButtonAction:
define C-pointer-type <GtkButtonAction*> => <GtkButtonAction>;
define C-pointer-type <GtkButtonAction**> => <GtkButtonAction*>;
define inline-only constant $GTK-BUTTON-IGNORED = 0;
define inline-only constant $GTK-BUTTON-SELECTS = ash(1,0);
define inline-only constant $GTK-BUTTON-DRAGS = ash(1,1);
define inline-only constant $GTK-BUTTON-EXPANDS = ash(1,2);

define C-pointer-type <GtkCList*> => <GtkCList>;
define C-pointer-type <GtkCList**> => <GtkCList*>;
define C-pointer-type <GtkCListClass*> => <GtkCListClass>;
define C-pointer-type <GtkCListClass**> => <GtkCListClass*>;
define C-pointer-type <GtkCListColumn*> => <GtkCListColumn>;
define C-pointer-type <GtkCListColumn**> => <GtkCListColumn*>;
define C-pointer-type <GtkCListRow*> => <GtkCListRow>;
define C-pointer-type <GtkCListRow**> => <GtkCListRow*>;
define C-pointer-type <GtkCell*> => <GtkCell>;
define C-pointer-type <GtkCell**> => <GtkCell*>;
define C-pointer-type <GtkCellText*> => <GtkCellText>;
define C-pointer-type <GtkCellText**> => <GtkCellText*>;
define C-pointer-type <GtkCellPixmap*> => <GtkCellPixmap>;
define C-pointer-type <GtkCellPixmap**> => <GtkCellPixmap*>;
define C-pointer-type <GtkCellPixText*> => <GtkCellPixText>;
define C-pointer-type <GtkCellPixText**> => <GtkCellPixText*>;
define C-pointer-type <GtkCellWidget*> => <GtkCellWidget>;
define C-pointer-type <GtkCellWidget**> => <GtkCellWidget*>;
define C-pointer-type <GtkCListCompareFunc*> => <GtkCListCompareFunc>;
define C-pointer-type <GtkCListCompareFunc**> => <GtkCListCompareFunc*>;
define C-pointer-type <GtkCListCellInfo*> => <GtkCListCellInfo>;
define C-pointer-type <GtkCListCellInfo**> => <GtkCListCellInfo*>;
define C-pointer-type <GtkCListDestInfo*> => <GtkCListDestInfo>;
define C-pointer-type <GtkCListDestInfo**> => <GtkCListDestInfo*>;

define C-struct <_GtkCListCellInfo>
  sealed inline-only slot row-value      :: <gint>;
  sealed inline-only slot column-value   :: <gint>;
  pointer-type-name: <_GtkCListCellInfo*>;
  c-name: "struct _GtkCListCellInfo";
end;

define C-struct <_GtkCListDestInfo>
  sealed inline-only slot cell-value     :: <GtkCListCellInfo>;
  sealed inline-only slot insert-pos-value :: <C-int>;
  pointer-type-name: <_GtkCListDestInfo*>;
  c-name: "struct _GtkCListDestInfo";
end;

define C-struct <_GtkCList>
  sealed inline-only slot container-value :: <GtkContainer>;
  sealed inline-only slot flags-value    :: <guint16>;
  sealed inline-only slot row-mem-chunk-value :: <GMemChunk*>;
  sealed inline-only slot cell-mem-chunk-value :: <GMemChunk*>;
  sealed inline-only slot freeze-count-value :: <guint>;
  sealed inline-only slot internal-allocation-value :: <GdkRectangle>;
  sealed inline-only slot rows-value     :: <gint>;
  sealed inline-only slot row-center-offset-value :: <gint>;
  sealed inline-only slot row-height-value :: <gint>;
  sealed inline-only slot row-list-value :: <GList*>;
  sealed inline-only slot row-list-end-value :: <GList*>;
  sealed inline-only slot columns-value  :: <gint>;
  sealed inline-only slot column-title-area-value :: <GdkRectangle>;
  sealed inline-only slot title-window-value :: <GdkWindow*>;
  sealed inline-only slot column-value   :: <GtkCListColumn*>;
  sealed inline-only slot clist-window-value :: <GdkWindow*>;
  sealed inline-only slot clist-window-width-value :: <gint>;
  sealed inline-only slot clist-window-height-value :: <gint>;
  sealed inline-only slot hoffset-value  :: <gint>;
  sealed inline-only slot voffset-value  :: <gint>;
  sealed inline-only slot shadow-type-value :: <GtkShadowType>;
  sealed inline-only slot selection-mode-value :: <GtkSelectionMode>;
  sealed inline-only slot selection-value :: <GList*>;
  sealed inline-only slot selection-end-value :: <GList*>;
  sealed inline-only slot undo-selection-value :: <GList*>;
  sealed inline-only slot undo-unselection-value :: <GList*>;
  sealed inline-only slot undo-anchor-value :: <gint>;
  sealed inline-only array slot button-actions-array :: <guint8>,
    length: 5,
    address-getter: button-actions-value;
  sealed inline-only slot drag-button-value :: <guint8>;
  sealed inline-only slot click-cell-value :: <GtkCListCellInfo>;
  sealed inline-only slot hadjustment-value :: <GtkAdjustment*>;
  sealed inline-only slot vadjustment-value :: <GtkAdjustment*>;
  sealed inline-only slot xor-gc-value   :: <GdkGC*>;
  sealed inline-only slot fg-gc-value    :: <GdkGC*>;
  sealed inline-only slot bg-gc-value    :: <GdkGC*>;
  sealed inline-only slot cursor-drag-value :: <GdkCursor*>;
  sealed inline-only slot x-drag-value   :: <gint>;
  sealed inline-only slot focus-row-value :: <gint>;
  sealed inline-only slot anchor-value   :: <gint>;
  sealed inline-only slot anchor-state-value :: <GtkStateType>;
  sealed inline-only slot drag-pos-value :: <gint>;
  sealed inline-only slot htimer-value   :: <gint>;
  sealed inline-only slot vtimer-value   :: <gint>;
  sealed inline-only slot sort-type-value :: <GtkSortType>;
  sealed inline-only slot compare-value  :: <GtkCListCompareFunc>;
  sealed inline-only slot sort-column-value :: <gint>;
  pointer-type-name: <_GtkCList*>;
  c-name: "struct _GtkCList";
end;

define C-struct <_GtkCListClass>
  sealed inline-only slot parent-class-value :: <GtkContainerClass>;
  sealed inline-only slot set-scroll-adjustments-value :: <C-function-pointer>;
  sealed inline-only slot refresh-value  :: <C-function-pointer>;
  sealed inline-only slot select-row-value :: <C-function-pointer>;
  sealed inline-only slot unselect-row-value :: <C-function-pointer>;
  sealed inline-only slot row-move-value :: <C-function-pointer>;
  sealed inline-only slot click-column-value :: <C-function-pointer>;
  sealed inline-only slot resize-column-value :: <C-function-pointer>;
  sealed inline-only slot toggle-focus-row-value :: <C-function-pointer>;
  sealed inline-only slot select-all-value :: <C-function-pointer>;
  sealed inline-only slot unselect-all-value :: <C-function-pointer>;
  sealed inline-only slot undo-selection-value :: <C-function-pointer>;
  sealed inline-only slot start-selection-value :: <C-function-pointer>;
  sealed inline-only slot end-selection-value :: <C-function-pointer>;
  sealed inline-only slot extend-selection-value :: <C-function-pointer>;
  sealed inline-only slot scroll-horizontal-value :: <C-function-pointer>;
  sealed inline-only slot scroll-vertical-value :: <C-function-pointer>;
  sealed inline-only slot toggle-add-mode-value :: <C-function-pointer>;
  sealed inline-only slot abort-column-resize-value :: <C-function-pointer>;
  sealed inline-only slot resync-selection-value :: <C-function-pointer>;
  sealed inline-only slot selection-find-value :: <C-function-pointer>;
  sealed inline-only slot draw-row-value :: <C-function-pointer>;
  sealed inline-only slot draw-drag-highlight-value :: <C-function-pointer>;
  sealed inline-only slot clear-value    :: <C-function-pointer>;
  sealed inline-only slot fake-unselect-all-value :: <C-function-pointer>;
  sealed inline-only slot sort-list-value :: <C-function-pointer>;
  sealed inline-only slot insert-row-value :: <C-function-pointer>;
  sealed inline-only slot remove-row-value :: <C-function-pointer>;
  sealed inline-only slot set-cell-contents-value :: <C-function-pointer>;
  sealed inline-only slot cell-size-request-value :: <C-function-pointer>;
  pointer-type-name: <_GtkCListClass*>;
  c-name: "struct _GtkCListClass";
end;

define C-struct <_GtkCListColumn>
  sealed inline-only slot title-value    :: <gchar*>;
  sealed inline-only slot area-value     :: <GdkRectangle>;
  sealed inline-only slot button-value   :: <GtkWidget*>;
  sealed inline-only slot window-value   :: <GdkWindow*>;
  sealed inline-only slot width-value    :: <gint>;
  sealed inline-only slot min-width-value :: <gint>;
  sealed inline-only slot max-width-value :: <gint>;
  sealed inline-only slot justification-value :: <GtkJustification>;
  sealed bitfield slot visible-value     :: <guint>,
    width: 1;
  sealed bitfield slot width-set-value   :: <guint>,
    width: 1;
  sealed bitfield slot resizeable-value  :: <guint>,
    width: 1;
  sealed bitfield slot auto-resize-value :: <guint>,
    width: 1;
  pointer-type-name: <_GtkCListColumn*>;
  c-name: "struct _GtkCListColumn";
end;

define C-struct <_GtkCListRow>
  sealed inline-only slot cell-value     :: <GtkCell*>;
  sealed inline-only slot state-value    :: <GtkStateType>;
  sealed inline-only slot foreground-value :: <GdkColor>;
  sealed inline-only slot background-value :: <GdkColor>;
  sealed inline-only slot style-value    :: <GtkStyle*>;
  sealed inline-only slot data-value     :: <gpointer>;
  sealed inline-only slot destroy-value  :: <GtkDestroyNotify>;
  sealed bitfield slot fg-set-value      :: <guint>,
    width: 1;
  sealed bitfield slot bg-set-value      :: <guint>,
    width: 1;
  sealed bitfield slot selectable-value  :: <guint>,
    width: 1;
  pointer-type-name: <_GtkCListRow*>;
  c-name: "struct _GtkCListRow";
end;

define C-struct <_GtkCellText>
  sealed inline-only slot type-value     :: <C-int>;
  sealed inline-only slot vertical-value :: <gint16>;
  sealed inline-only slot horizontal-value :: <gint16>;
  sealed inline-only slot style-value    :: <GtkStyle*>;
  sealed inline-only slot text-value     :: <gchar*>;
  pointer-type-name: <_GtkCellText*>;
  c-name: "struct _GtkCellText";
end;

define C-struct <_GtkCellPixmap>
  sealed inline-only slot type-value     :: <C-int>;
  sealed inline-only slot vertical-value :: <gint16>;
  sealed inline-only slot horizontal-value :: <gint16>;
  sealed inline-only slot style-value    :: <GtkStyle*>;
  sealed inline-only slot pixmap-value   :: <GdkPixmap*>;
  sealed inline-only slot mask-value     :: <GdkBitmap*>;
  pointer-type-name: <_GtkCellPixmap*>;
  c-name: "struct _GtkCellPixmap";
end;

define C-struct <_GtkCellPixText>
  sealed inline-only slot type-value     :: <C-int>;
  sealed inline-only slot vertical-value :: <gint16>;
  sealed inline-only slot horizontal-value :: <gint16>;
  sealed inline-only slot style-value    :: <GtkStyle*>;
  sealed inline-only slot text-value     :: <gchar*>;
  sealed inline-only slot spacing-value  :: <guint8>;
  sealed inline-only slot pixmap-value   :: <GdkPixmap*>;
  sealed inline-only slot mask-value     :: <GdkBitmap*>;
  pointer-type-name: <_GtkCellPixText*>;
  c-name: "struct _GtkCellPixText";
end;

define C-struct <_GtkCellWidget>
  sealed inline-only slot type-value     :: <C-int>;
  sealed inline-only slot vertical-value :: <gint16>;
  sealed inline-only slot horizontal-value :: <gint16>;
  sealed inline-only slot style-value    :: <GtkStyle*>;
  sealed inline-only slot widget-value   :: <GtkWidget*>;
  pointer-type-name: <_GtkCellWidget*>;
  c-name: "struct _GtkCellWidget";
end;
define C-struct <pm%1>
  sealed inline-only slot pixmap-value   :: <GdkPixmap*>;
  sealed inline-only slot mask-value     :: <GdkBitmap*>;
end;
define C-struct <pt%2>
  sealed inline-only slot text-value     :: <gchar*>;
  sealed inline-only slot spacing-value  :: <guint8>;
  sealed inline-only slot pixmap-value   :: <GdkPixmap*>;
  sealed inline-only slot mask-value     :: <GdkBitmap*>;
end;
define C-struct <pm%3>
  sealed inline-only slot pixmap-value   :: <GdkPixmap*>;
  sealed inline-only slot mask-value     :: <GdkBitmap*>;
end;
define C-struct <pt%4>
  sealed inline-only slot text-value     :: <gchar*>;
  sealed inline-only slot spacing-value  :: <guint8>;
  sealed inline-only slot pixmap-value   :: <GdkPixmap*>;
  sealed inline-only slot mask-value     :: <GdkBitmap*>;
end;
define C-union <u%5>
  sealed inline-only slot text-value     :: <gchar*>;
  sealed inline-only slot pm-value       :: <pm%3>, setter: #f;
  sealed inline-only slot pt-value       :: <pt%4>, setter: #f;
  sealed inline-only slot widget-value   :: <GtkWidget*>;
end;

define C-struct <_GtkCell>
  sealed inline-only slot type-value     :: <C-int>;
  sealed inline-only slot vertical-value :: <gint16>;
  sealed inline-only slot horizontal-value :: <gint16>;
  sealed inline-only slot style-value    :: <GtkStyle*>;
  sealed inline-only slot u-value        :: <u%5>;
  pointer-type-name: <_GtkCell*>;
  c-name: "struct _GtkCell";
end;

define inline-only C-function gtk-clist-get-type
  result value :: <GtkType>;
  c-name: "gtk_clist_get_type";
end;

define inline-only C-function gtk-clist-construct
  parameter clist1     :: <GtkCList*>;
  parameter columns2   :: <gint>;
  parameter titles3    :: <gchar**>;
  c-name: "gtk_clist_construct";
end;

define inline-only C-function gtk-clist-new
  parameter columns1   :: <gint>;
  result value :: <GtkWidget*>;
  c-name: "gtk_clist_new";
end;

define inline-only C-function gtk-clist-new-with-titles
  parameter columns1   :: <gint>;
  parameter titles2    :: <gchar**>;
  result value :: <GtkWidget*>;
  c-name: "gtk_clist_new_with_titles";
end;

define inline-only C-function gtk-clist-set-hadjustment
  parameter clist1     :: <GtkCList*>;
  parameter adjustment2 :: <GtkAdjustment*>;
  c-name: "gtk_clist_set_hadjustment";
end;

define inline-only C-function gtk-clist-set-vadjustment
  parameter clist1     :: <GtkCList*>;
  parameter adjustment2 :: <GtkAdjustment*>;
  c-name: "gtk_clist_set_vadjustment";
end;

define inline-only C-function gtk-clist-get-hadjustment
  parameter clist1     :: <GtkCList*>;
  result value :: <GtkAdjustment*>;
  c-name: "gtk_clist_get_hadjustment";
end;

define inline-only C-function gtk-clist-get-vadjustment
  parameter clist1     :: <GtkCList*>;
  result value :: <GtkAdjustment*>;
  c-name: "gtk_clist_get_vadjustment";
end;

define inline-only C-function gtk-clist-set-shadow-type
  parameter clist1     :: <GtkCList*>;
  parameter type2      :: <GtkShadowType>;
  c-name: "gtk_clist_set_shadow_type";
end;

define inline-only C-function gtk-clist-set-selection-mode
  parameter clist1     :: <GtkCList*>;
  parameter mode2      :: <GtkSelectionMode>;
  c-name: "gtk_clist_set_selection_mode";
end;

define inline-only C-function gtk-clist-set-reorderable
  parameter clist1     :: <GtkCList*>;
  parameter reorderable2 :: <gboolean>;
  c-name: "gtk_clist_set_reorderable";
end;

define inline-only C-function gtk-clist-set-use-drag-icons
  parameter clist1     :: <GtkCList*>;
  parameter use_icons2 :: <gboolean>;
  c-name: "gtk_clist_set_use_drag_icons";
end;

define inline-only C-function gtk-clist-set-button-actions
  parameter clist1     :: <GtkCList*>;
  parameter button2    :: <guint>;
  parameter button_actions3 :: <guint8>;
  c-name: "gtk_clist_set_button_actions";
end;

define inline-only C-function gtk-clist-freeze
  parameter clist1     :: <GtkCList*>;
  c-name: "gtk_clist_freeze";
end;

define inline-only C-function gtk-clist-thaw
  parameter clist1     :: <GtkCList*>;
  c-name: "gtk_clist_thaw";
end;

define inline-only C-function gtk-clist-column-titles-show
  parameter clist1     :: <GtkCList*>;
  c-name: "gtk_clist_column_titles_show";
end;

define inline-only C-function gtk-clist-column-titles-hide
  parameter clist1     :: <GtkCList*>;
  c-name: "gtk_clist_column_titles_hide";
end;

define inline-only C-function gtk-clist-column-title-active
  parameter clist1     :: <GtkCList*>;
  parameter column2    :: <gint>;
  c-name: "gtk_clist_column_title_active";
end;

define inline-only C-function gtk-clist-column-title-passive
  parameter clist1     :: <GtkCList*>;
  parameter column2    :: <gint>;
  c-name: "gtk_clist_column_title_passive";
end;

define inline-only C-function gtk-clist-column-titles-active
  parameter clist1     :: <GtkCList*>;
  c-name: "gtk_clist_column_titles_active";
end;

define inline-only C-function gtk-clist-column-titles-passive
  parameter clist1     :: <GtkCList*>;
  c-name: "gtk_clist_column_titles_passive";
end;

define inline-only C-function gtk-clist-set-column-title
  parameter clist1     :: <GtkCList*>;
  parameter column2    :: <gint>;
  parameter title3     ::  /* const */ <gchar*>;
  c-name: "gtk_clist_set_column_title";
end;

define inline-only C-function gtk-clist-get-column-title
  parameter clist1     :: <GtkCList*>;
  parameter column2    :: <gint>;
  result value :: <gchar*>;
  c-name: "gtk_clist_get_column_title";
end;

define inline-only C-function gtk-clist-set-column-widget
  parameter clist1     :: <GtkCList*>;
  parameter column2    :: <gint>;
  parameter widget3    :: <GtkWidget*>;
  c-name: "gtk_clist_set_column_widget";
end;

define inline-only C-function gtk-clist-get-column-widget
  parameter clist1     :: <GtkCList*>;
  parameter column2    :: <gint>;
  result value :: <GtkWidget*>;
  c-name: "gtk_clist_get_column_widget";
end;

define inline-only C-function gtk-clist-set-column-justification
  parameter clist1     :: <GtkCList*>;
  parameter column2    :: <gint>;
  parameter justification3 :: <GtkJustification>;
  c-name: "gtk_clist_set_column_justification";
end;

define inline-only C-function gtk-clist-set-column-visibility
  parameter clist1     :: <GtkCList*>;
  parameter column2    :: <gint>;
  parameter visible3   :: <gboolean>;
  c-name: "gtk_clist_set_column_visibility";
end;

define inline-only C-function gtk-clist-set-column-resizeable
  parameter clist1     :: <GtkCList*>;
  parameter column2    :: <gint>;
  parameter resizeable3 :: <gboolean>;
  c-name: "gtk_clist_set_column_resizeable";
end;

define inline-only C-function gtk-clist-set-column-auto-resize
  parameter clist1     :: <GtkCList*>;
  parameter column2    :: <gint>;
  parameter auto_resize3 :: <gboolean>;
  c-name: "gtk_clist_set_column_auto_resize";
end;

define inline-only C-function gtk-clist-columns-autosize
  parameter clist1     :: <GtkCList*>;
  result value :: <gint>;
  c-name: "gtk_clist_columns_autosize";
end;

define inline-only C-function gtk-clist-optimal-column-width
  parameter clist1     :: <GtkCList*>;
  parameter column2    :: <gint>;
  result value :: <gint>;
  c-name: "gtk_clist_optimal_column_width";
end;

define inline-only C-function gtk-clist-set-column-width
  parameter clist1     :: <GtkCList*>;
  parameter column2    :: <gint>;
  parameter width3     :: <gint>;
  c-name: "gtk_clist_set_column_width";
end;

define inline-only C-function gtk-clist-set-column-min-width
  parameter clist1     :: <GtkCList*>;
  parameter column2    :: <gint>;
  parameter min_width3 :: <gint>;
  c-name: "gtk_clist_set_column_min_width";
end;

define inline-only C-function gtk-clist-set-column-max-width
  parameter clist1     :: <GtkCList*>;
  parameter column2    :: <gint>;
  parameter max_width3 :: <gint>;
  c-name: "gtk_clist_set_column_max_width";
end;

define inline-only C-function gtk-clist-set-row-height
  parameter clist1     :: <GtkCList*>;
  parameter height2    :: <guint>;
  c-name: "gtk_clist_set_row_height";
end;

define inline-only C-function gtk-clist-moveto
  parameter clist1     :: <GtkCList*>;
  parameter row2       :: <gint>;
  parameter column3    :: <gint>;
  parameter row_align4 :: <gfloat>;
  parameter col_align5 :: <gfloat>;
  c-name: "gtk_clist_moveto";
end;

define inline-only C-function gtk-clist-row-is-visible
  parameter clist1     :: <GtkCList*>;
  parameter row2       :: <gint>;
  result value :: <GtkVisibility>;
  c-name: "gtk_clist_row_is_visible";
end;

define inline-only C-function gtk-clist-get-cell-type
  parameter clist1     :: <GtkCList*>;
  parameter row2       :: <gint>;
  parameter column3    :: <gint>;
  result value :: <C-int>;
  c-name: "gtk_clist_get_cell_type";
end;

define inline-only C-function gtk-clist-set-text
  parameter clist1     :: <GtkCList*>;
  parameter row2       :: <gint>;
  parameter column3    :: <gint>;
  parameter text4      ::  /* const */ <gchar*>;
  c-name: "gtk_clist_set_text";
end;

define inline-only C-function gtk-clist-get-text
  parameter clist1     :: <GtkCList*>;
  parameter row2       :: <gint>;
  parameter column3    :: <gint>;
  parameter text4      :: <gchar**>;
  result value :: <gint>;
  c-name: "gtk_clist_get_text";
end;

define inline-only C-function gtk-clist-set-pixmap
  parameter clist1     :: <GtkCList*>;
  parameter row2       :: <gint>;
  parameter column3    :: <gint>;
  parameter pixmap4    :: <GdkPixmap*>;
  parameter mask5      :: <GdkBitmap*>;
  c-name: "gtk_clist_set_pixmap";
end;

define inline-only C-function gtk-clist-get-pixmap
  parameter clist1     :: <GtkCList*>;
  parameter row2       :: <gint>;
  parameter column3    :: <gint>;
  parameter pixmap4    :: <GdkPixmap**>;
  parameter mask5      :: <GdkBitmap**>;
  result value :: <gint>;
  c-name: "gtk_clist_get_pixmap";
end;

define inline-only C-function gtk-clist-set-pixtext
  parameter clist1     :: <GtkCList*>;
  parameter row2       :: <gint>;
  parameter column3    :: <gint>;
  parameter text4      ::  /* const */ <gchar*>;
  parameter spacing5   :: <guint8>;
  parameter pixmap6    :: <GdkPixmap*>;
  parameter mask7      :: <GdkBitmap*>;
  c-name: "gtk_clist_set_pixtext";
end;

define inline-only C-function gtk-clist-get-pixtext
  parameter clist1     :: <GtkCList*>;
  parameter row2       :: <gint>;
  parameter column3    :: <gint>;
  parameter text4      :: <gchar**>;
  parameter spacing5   :: <guint8*>;
  parameter pixmap6    :: <GdkPixmap**>;
  parameter mask7      :: <GdkBitmap**>;
  result value :: <gint>;
  c-name: "gtk_clist_get_pixtext";
end;

define inline-only C-function gtk-clist-set-foreground
  parameter clist1     :: <GtkCList*>;
  parameter row2       :: <gint>;
  parameter color3     :: <GdkColor*>;
  c-name: "gtk_clist_set_foreground";
end;

define inline-only C-function gtk-clist-set-background
  parameter clist1     :: <GtkCList*>;
  parameter row2       :: <gint>;
  parameter color3     :: <GdkColor*>;
  c-name: "gtk_clist_set_background";
end;

define inline-only C-function gtk-clist-set-cell-style
  parameter clist1     :: <GtkCList*>;
  parameter row2       :: <gint>;
  parameter column3    :: <gint>;
  parameter style4     :: <GtkStyle*>;
  c-name: "gtk_clist_set_cell_style";
end;

define inline-only C-function gtk-clist-get-cell-style
  parameter clist1     :: <GtkCList*>;
  parameter row2       :: <gint>;
  parameter column3    :: <gint>;
  result value :: <GtkStyle*>;
  c-name: "gtk_clist_get_cell_style";
end;

define inline-only C-function gtk-clist-set-row-style
  parameter clist1     :: <GtkCList*>;
  parameter row2       :: <gint>;
  parameter style3     :: <GtkStyle*>;
  c-name: "gtk_clist_set_row_style";
end;

define inline-only C-function gtk-clist-get-row-style
  parameter clist1     :: <GtkCList*>;
  parameter row2       :: <gint>;
  result value :: <GtkStyle*>;
  c-name: "gtk_clist_get_row_style";
end;

define inline-only C-function gtk-clist-set-shift
  parameter clist1     :: <GtkCList*>;
  parameter row2       :: <gint>;
  parameter column3    :: <gint>;
  parameter vertical4  :: <gint>;
  parameter horizontal5 :: <gint>;
  c-name: "gtk_clist_set_shift";
end;

define inline-only C-function gtk-clist-set-selectable
  parameter clist1     :: <GtkCList*>;
  parameter row2       :: <gint>;
  parameter selectable3 :: <gboolean>;
  c-name: "gtk_clist_set_selectable";
end;

define inline-only C-function gtk-clist-get-selectable
  parameter clist1     :: <GtkCList*>;
  parameter row2       :: <gint>;
  result value :: <gboolean>;
  c-name: "gtk_clist_get_selectable";
end;

define inline-only C-function gtk-clist-prepend
  parameter clist1     :: <GtkCList*>;
  parameter text2      :: <gchar**>;
  result value :: <gint>;
  c-name: "gtk_clist_prepend";
end;

define inline-only C-function gtk-clist-append
  parameter clist1     :: <GtkCList*>;
  parameter text2      :: <gchar**>;
  result value :: <gint>;
  c-name: "gtk_clist_append";
end;

define inline-only C-function gtk-clist-insert
  parameter clist1     :: <GtkCList*>;
  parameter row2       :: <gint>;
  parameter text3      :: <gchar**>;
  result value :: <gint>;
  c-name: "gtk_clist_insert";
end;

define inline-only C-function gtk-clist-remove
  parameter clist1     :: <GtkCList*>;
  parameter row2       :: <gint>;
  c-name: "gtk_clist_remove";
end;

define inline-only C-function gtk-clist-set-row-data
  parameter clist1     :: <GtkCList*>;
  parameter row2       :: <gint>;
  parameter data3      :: <gpointer>;
  c-name: "gtk_clist_set_row_data";
end;

define inline-only C-function gtk-clist-set-row-data-full
  parameter clist1     :: <GtkCList*>;
  parameter row2       :: <gint>;
  parameter data3      :: <gpointer>;
  parameter destroy4   :: <GtkDestroyNotify>;
  c-name: "gtk_clist_set_row_data_full";
end;

define inline-only C-function gtk-clist-get-row-data
  parameter clist1     :: <GtkCList*>;
  parameter row2       :: <gint>;
  result value :: <gpointer>;
  c-name: "gtk_clist_get_row_data";
end;

define inline-only C-function gtk-clist-find-row-from-data
  parameter clist1     :: <GtkCList*>;
  parameter data2      :: <gpointer>;
  result value :: <gint>;
  c-name: "gtk_clist_find_row_from_data";
end;

define inline-only C-function gtk-clist-select-row
  parameter clist1     :: <GtkCList*>;
  parameter row2       :: <gint>;
  parameter column3    :: <gint>;
  c-name: "gtk_clist_select_row";
end;

define inline-only C-function gtk-clist-unselect-row
  parameter clist1     :: <GtkCList*>;
  parameter row2       :: <gint>;
  parameter column3    :: <gint>;
  c-name: "gtk_clist_unselect_row";
end;

define inline-only C-function gtk-clist-undo-selection
  parameter clist1     :: <GtkCList*>;
  c-name: "gtk_clist_undo_selection";
end;

define inline-only C-function gtk-clist-clear
  parameter clist1     :: <GtkCList*>;
  c-name: "gtk_clist_clear";
end;

define inline-only C-function gtk-clist-get-selection-info
  parameter clist1     :: <GtkCList*>;
  parameter x2         :: <gint>;
  parameter y3         :: <gint>;
  parameter row4       :: <gint*>;
  parameter column5    :: <gint*>;
  result value :: <gint>;
  c-name: "gtk_clist_get_selection_info";
end;

define inline-only C-function gtk-clist-select-all
  parameter clist1     :: <GtkCList*>;
  c-name: "gtk_clist_select_all";
end;

define inline-only C-function gtk-clist-unselect-all
  parameter clist1     :: <GtkCList*>;
  c-name: "gtk_clist_unselect_all";
end;

define inline-only C-function gtk-clist-swap-rows
  parameter clist1     :: <GtkCList*>;
  parameter row12      :: <gint>;
  parameter row23      :: <gint>;
  c-name: "gtk_clist_swap_rows";
end;

define inline-only C-function gtk-clist-row-move
  parameter clist1     :: <GtkCList*>;
  parameter source_row2 :: <gint>;
  parameter dest_row3  :: <gint>;
  c-name: "gtk_clist_row_move";
end;

define inline-only C-function gtk-clist-set-compare-func
  parameter clist1     :: <GtkCList*>;
  parameter cmp_func2  :: <GtkCListCompareFunc>;
  c-name: "gtk_clist_set_compare_func";
end;

define inline-only C-function gtk-clist-set-sort-column
  parameter clist1     :: <GtkCList*>;
  parameter column2    :: <gint>;
  c-name: "gtk_clist_set_sort_column";
end;

define inline-only C-function gtk-clist-set-sort-type
  parameter clist1     :: <GtkCList*>;
  parameter sort_type2 :: <GtkSortType>;
  c-name: "gtk_clist_set_sort_type";
end;

define inline-only C-function gtk-clist-sort
  parameter clist1     :: <GtkCList*>;
  c-name: "gtk_clist_sort";
end;

define inline-only C-function gtk-clist-set-auto-sort
  parameter clist1     :: <GtkCList*>;
  parameter auto_sort2 :: <gboolean>;
  c-name: "gtk_clist_set_auto_sort";
end;

define inline constant <GtkCellType> = <c-signed-int>;
define inline constant <GtkCListDragPos> = <c-signed-int>;
define inline constant <GtkButtonAction> = <c-signed-int>;
define inline constant <GtkCList> = <_GtkCList>;
define inline constant <GtkCListClass> = <_GtkCListClass>;
define inline constant <GtkCListColumn> = <_GtkCListColumn>;
define inline constant <GtkCListRow> = <_GtkCListRow>;
define inline constant <GtkCell> = <_GtkCell>;
define inline constant <GtkCellText> = <_GtkCellText>;
define inline constant <GtkCellPixmap> = <_GtkCellPixmap>;
define inline constant <GtkCellPixText> = <_GtkCellPixText>;
define inline constant <GtkCellWidget> = <_GtkCellWidget>;
define inline constant <GtkCListCompareFunc> = <C-function-pointer>;
define inline constant <GtkCListCellInfo> = <_GtkCListCellInfo>;
define inline constant <GtkCListDestInfo> = <_GtkCListDestInfo>;
define sealed domain make (singleton(<_GtkCListCellInfo*>));
define sealed domain initialize (<_GtkCListCellInfo*>);
define sealed domain make (singleton(<_GtkCListDestInfo*>));
define sealed domain initialize (<_GtkCListDestInfo*>);
define sealed domain make (singleton(<_GtkCList*>));
define sealed domain initialize (<_GtkCList*>);
define sealed domain make (singleton(<_GtkCListClass*>));
define sealed domain initialize (<_GtkCListClass*>);
define sealed domain make (singleton(<_GtkCListColumn*>));
define sealed domain initialize (<_GtkCListColumn*>);
define sealed domain make (singleton(<_GtkCListRow*>));
define sealed domain initialize (<_GtkCListRow*>);
define sealed domain make (singleton(<_GtkCellText*>));
define sealed domain initialize (<_GtkCellText*>);
define sealed domain make (singleton(<_GtkCellPixmap*>));
define sealed domain initialize (<_GtkCellPixmap*>);
define sealed domain make (singleton(<_GtkCellPixText*>));
define sealed domain initialize (<_GtkCellPixText*>);
define sealed domain make (singleton(<_GtkCellWidget*>));
define sealed domain initialize (<_GtkCellWidget*>);
define sealed domain make (singleton(<_GtkCell*>));
define sealed domain initialize (<_GtkCell*>);
