Module:    dylan-user
Synopsis:  Support for "linking" via a C compiler and linker
Author:    Gary Palter
Copyright:    Original Code is Copyright (c) 1995-2004 Functional Objects, Inc.
              All rights reserved.
License:      Functional Objects Library Public License Version 1.0
Dual-license: GNU Lesser General Public License
Warranty:     Distributed WITHOUT WARRANTY OF ANY KIND

define library ccl-linker
  use functional-dylan;
  use system;
  use io;
  use build-system;
  export ccl-linker;
end library;

define module ccl-linker
  use functional-dylan;
  use threads;
  use operating-system;
  use file-system;
  use streams;
  use format;
  use locators;
  use build-system;
  use path-utilities;
  export
    <ccl-linker>;
end module;
