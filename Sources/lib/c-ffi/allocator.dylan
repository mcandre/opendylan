module:    c-ffi-implementation
Copyright:    Original Code is Copyright (c) 1995-2004 Functional Objects, Inc.
              All rights reserved.
License:      Functional Objects Library Public License Version 1.0
Dual-license: GNU Lesser General Public License
Warranty:     Distributed WITHOUT WARRANTY OF ANY KIND


define inline function default-allocator
    (size :: <integer>) => (m :: <machine-word>);
  primitive-manual-allocate(max(size, 16))
end;


define inline function default-deallocator (pointer :: <machine-word>) => ();
  primitive-manual-free(make(<C-heap-pointer>, address: pointer))
end;
