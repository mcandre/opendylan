module:    native-back-end
Synopsis:  The definition of the <harp-native-back-end> class.
Author:    Tony Mann
Copyright:    Original Code is Copyright (c) 1995-2004 Functional Objects, Inc.
              All rights reserved.
License:      Functional Objects Library Public License Version 1.0
Dual-license: GNU Lesser General Public License
Warranty:     Distributed WITHOUT WARRANTY OF ANY KIND


// The abstract class from which all native HARP backends are derived. 
// Native backends have stack operations (unlike the IDVM).

define abstract open primary class <harp-native-back-end> (<harp-back-end>)
end;


// The abstract class from which all CISC backends are derived.
// CISC backends have some extended addressing mode instructions.

define abstract open primary class <harp-cisc-back-end> (<harp-native-back-end>)
end;


// The abstract class from which all RISC backends are derived.

define abstract open primary class <harp-risc-back-end> (<harp-native-back-end>)
end;
