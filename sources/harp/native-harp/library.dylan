module:    dylan-user
Synopsis:  The library definition for the native-harp library
Author:    Tony Mann
Copyright:    Original Code is Copyright (c) 1995-2004 Functional Objects, Inc.
              All rights reserved.
License:      Functional Objects Library Public License Version 1.0
Dual-license: GNU Lesser General Public License
Warranty:     Distributed WITHOUT WARRANTY OF ANY KIND


define library native-harp 
  use functional-dylan;
  use harp;

  export native-harp;                // The interface for native-harp clients

  export native-harp-for-extenders;  // The interface for specializing - e.g.
                                     // by defining back ends

end library;
