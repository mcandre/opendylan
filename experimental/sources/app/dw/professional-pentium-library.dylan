Module:    dylan-user
Synopsis:  Dylan compiler
Author:    Roman Budzianowski
Copyright:    Original Code is Copyright (c) 1995-2004 Functional Objects, Inc.
              All rights reserved.
License:      Functional Objects Library Public License Version 1.0
Dual-license: GNU Lesser General Public License
Warranty:     Distributed WITHOUT WARRANTY OF ANY KIND

define library professional-pentium-dw
  use professional-release-info;
  use licensing;

  use functional-dylan;
  use threads;
  use locators;
  use system;
  use io;
  use memory-manager;
  use dood;
  use dispatch-profiler;
  use projects;
  use registry-projects;
  use user-projects;
  use dfmc-browser-support;

  use dfmc-common;

  use source-records;
  use file-source-records;

  // Load a back-end
  use dfmc-namespace;
  use dfmc-optimization;
  use dfmc-debug-back-end;
  use dfmc-pentium-file-compiler;

  // Load the GNU linker
  use gnu-linker;
  // Load the ELF linker
  use elf-linker;

  // Load the tool interfaces
  use motley;

  use dfmc-shell;

  export dw;

end library professional-pentium-dw;
