Module:    Dylan-User
Synopsis:  Environment-Emacsserver Interface
Author:    Scott McKay, Hugh Greene
Copyright:    Original Code is Copyright (c) 1995-2004 Functional Objects, Inc.
              All rights reserved.
License:      Functional Objects Library Public License Version 1.0
Dual-license: GNU Lesser General Public License
Warranty:     Distributed WITHOUT WARRANTY OF ANY KIND

define library editor-emacsserver-backend
  use functional-dylan;
  use commands;

  use editor-manager;
  use editor-exe-backend;

  export editor-emacsserver-backend;
end library editor-emacsserver-backend;
