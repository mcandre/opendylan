Module:    Dylan-User
Synopsis:  Tests the macros for defining OLE Automation objects.
Copyright:    Original Code is Copyright (c) 1995-2004 Functional Objects, Inc.
              All rights reserved.
License:      Functional Objects Library Public License Version 1.0
Dual-license: GNU Lesser General Public License
Warranty:     Distributed WITHOUT WARRANTY OF ANY KIND

define library ole-macro-test
  use functional-dylan;
  use OLE-Automation;
  use testworks;
end library;

define module ole-macro-test
  use functional-dylan;
  use simple-format;
  use OLE-Automation;
  use testworks;
end module;
