Module:    dylan-user
Author:    James Kirsch, Jason Trenouth
Synopsis:  Distributed Pente Game
Copyright:    Original Code is Copyright (c) 1995-2004 Functional Objects, Inc.
              All rights reserved.
License:      Functional Objects Library Public License Version 1.0
Dual-license: GNU Lesser General Public License
Warranty:     Distributed WITHOUT WARRANTY OF ANY KIND

define library corba-pente
  use functional-dylan;
  use system;
  use duim;  
  use dylan-orb;
  use pente-skeletons;
  use network;
  use io;
  export pente;
end library corba-pente;

