Module:    dylan-user
Author:    Andy Armstrong
Synopsis:  An application library for dfmc-environment-test-suite
Copyright:    Original Code is Copyright (c) 1995-2004 Functional Objects, Inc.
              All rights reserved.
License:      Functional Objects Library Public License Version 1.0
Dual-license: GNU Lesser General Public License
Warranty:     Distributed WITHOUT WARRANTY OF ANY KIND

define library dfmc-environment-test-suite-app
  use dfmc-environment-test-suite;
  use testworks;
end library dfmc-environment-test-suite-app;

define module dfmc-environment-test-suite-app
  use dfmc-environment-test-suite;
  use testworks;
end module dfmc-environment-test-suite-app;
