Module:    dylan-user
Author:    Hugh Greene, Jason Trenouth
Copyright:    Original Code is Copyright (c) 1995-2004 Functional Objects, Inc.
              All rights reserved.
License:      Functional Objects Library Public License Version 1.0
Dual-license: GNU Lesser General Public License
Warranty:     Distributed WITHOUT WARRANTY OF ANY KIND

// These modules are the same as the normal ones, except we don't use motley.

define module utilities
  use functional-dylan;
  use duim;                     // for <medium>, text-size
  use locators;
  use file-system;

  // String utils.
  export strings-size-info;

  export find-existing-ancestor,
	 maybe-ensure-project-directory;

  // <choice> class
  export <choice>,
	 choice-object,
	 choice-children, choice-children-setter,
	 choice-included?, choice-included?-setter,
         choice-object-documentation,
         choice-object-label,
	 all-included-choices,
	 union-choice-inclusion!;

  // text-gadget-with-file-browser pane
  export <file-browse-pane>,
	 file-browse-function, file-browse-function-setter,
	 file-browse-text-pane,
	 file-browse-button,
	 file-browse-pane-enabled?-setter;

  // text-field-with-option-check-box pane
  export <text-field-option>,
	 text-field-option-text-field,
	 text-field-option-text-field-value,
	   text-field-option-text-field-value-setter,
	 text-field-option-value;

/* #### MULTI-LINE TEXT #############################
  // multi-line text
  export <multi-line-text-pane>,
	 <multi-page-pane>,
	 pages, pages-setter,
	 current-page, current-page-setter;
#### MULTI-LINE TEXT ############################# */
end module;

define module repository
  use functional-dylan;
  use duim-internals,	 // for string-capitalize
    exclude: { position };
  use release-info;

  // Modules from this library.
  use utilities;

  export <repository-object>,
	 repository-object-id,
	 repository-object-label,
	 repository-object-documentation,
	 repository-object-minimum-edition;

  export <project-library-group>,
	 project-library-group-libraries,
	 $project-library-groups;

  export <project-library>,
	 project-library-modules,
	 project-library-packs,
	 $project-libraries;

/*
  export <project-file>,
	 project-file-name,
	 project-file-base,
	 project-file-extension,
	 project-file-headers,
	 $project-files;

  export <project-file-header>,
	 project-file-header-default-value,
	 $project-file-headers;
*/

  export <project-type>,
         $project-types,
	 project-type-order;

  export make-repository-choice,
	 make-repository-choices,
	 repository-as-choices,
	 find-repository-choice,
	 library-group-choice-included?-setter,
	 library-choice-included?-setter;
end module;

define module environment-project-wizard
  use functional-dylan;
  use duim;
  use win32-duim;
  use duim-internals,	 // for port-default-frame-manager, string-capitalize
    exclude: { position };
  use streams;
  use format;
  use locators;
  use file-system;
  use operating-system;
  use table-extensions;
    // for case-insensitive-equal

  use environment-manager;
    // To implement new-project-wizard.
  use build-system;
    // for user-projects-path
  use settings;
    // for persistent storage of settings
  use release-info;
    // for release-templates-directory

  // Modules from this library.
  use utilities;
  use repository;

  export $check-mark-icon,
	 $uncheck-mark-icon;
end module;
