module:    powerpc-linux-rtg
Synopsis:  Managing the FFI barrier, allocation of TEBs & entry points
Author:    Nosa Omo
Copyright:    Original Code is Copyright (c) 1995-2004 Functional Objects, Inc.
              All rights reserved.
License:      Functional Objects Library Public License Version 1.0
Dual-license: GNU Lesser General Public License
Warranty:     Distributed WITHOUT WARRANTY OF ANY KIND


define sideways method op--initialize-teb-register
    (be :: <powerpc-linux-back-end>) => ()
  ins--move(be, reg--teb, thread-local-storage);
end method;
