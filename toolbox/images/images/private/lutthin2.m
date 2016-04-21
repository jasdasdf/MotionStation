function lut = lutthin2
%LUTTHIN2 Compute "thin2" look-up table.

%   Copyright 1993-2003 The MathWorks, Inc.  
%   $Revision: 1.5.4.2 $  $Date: 2003/08/23 05:54:18 $

lut = [ ...
     0     0     0     0     0     0     0     0     0     0     0     0 ...
     0     0     0     0     0     0     0     0     0     1     0     1 ...
     0     0     1     1     1     1     1     1     0     0     0     0 ...
     0     0     0     0     0     0     0     0     0     0     0     0 ...
     0     1     1     1     0     1     1     1     1     1     1     1 ...
     1     1     1     1     0     0     0     0     0     0     0     0 ...
     0     0     0     0     0     0     0     0     0     1     1     1 ...
     1     1     1     1     0     1     1     1     1     1     1     1 ...
     0     0     0     0     0     0     0     0     0     0     0     0 ...
     0     0     0     0     1     1     1     1     1     1     1     1 ...
     1     1     1     1     1     1     1     1     0     0     0     0 ...
     0     0     0     0     0     0     0     0     0     0     0     0 ...
     0     1     1     1     1     1     1     1     1     1     1     1 ...
     1     1     1     1     0     0     0     0     0     0     0     0 ...
     0     0     0     0     0     0     0     0     1     1     1     1 ...
     1     1     1     1     1     1     0     0     1     0     0     0 ...
     0     0     0     0     0     0     0     0     0     0     0     0 ...
     0     0     0     0     0     1     1     1     1     1     1     1 ...
     1     1     1     1     1     1     1     1     0     0     0     0 ...
     0     0     0     0     0     0     0     0     0     0     0     0 ...
     1     1     1     0     1     0     1     0     1     1     0     0 ...
     1     0     0     0     0     0     0     0     0     0     0     0 ...
     0     0     0     0     0     0     0     0     0     1     1     1 ...
     1     1     1     1     1     1     1     1     1     1     1     1 ...
     0     0     0     0     0     0     0     0     0     0     0     0 ...
     0     0     0     0     0     1     1     1     1     1     1     1 ...
     1     1     1     1     1     1     1     1     0     0     0     0 ...
     0     0     0     0     0     0     0     0     0     0     0     0 ...
     1     1     1     1     1     0     1     0     1     1     1     1 ...
     1     0     0     0     0     0     0     0     0     0     0     0 ...
     0     0     0     0     0     0     0     0     1     1     1     0 ...
     1     0     1     0     1     1     0     0     1     0     0     0 ...
     0     0     0     0     0     0     0     0     0     0     0     0 ...
     0     0     0     0     0     1     1     1     1     1     1     1 ...
     1     1     1     1     1     0     0     0     0     0     0     0 ...
     0     0     0     0     0     0     0     0     0     0     0     0 ...
     1     1     1     1     1     1     1     1     1     1     0     0 ...
     1     0     0     0     0     0     0     0     0     0     0     0 ...
     0     0     0     0     0     0     0     0     1     1     1     1 ...
     1     0     1     0     1     1     1     1     1     0     0     0 ...
     0     0     0     0     0     0     0     0     0     0     0     0 ...
     0     0     0     0     1     1     1     0     1     0     1     0 ...
     1     1     0     0     1     0     0     0];

lut = lut(:);