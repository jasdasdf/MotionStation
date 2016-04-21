function mob = Udriftdepmob(imesh,u0,F,V,vsat,b)

  
% mob = Ufielddepmob(imesh,u0,F,vsat,b) 
% Computes field dependent mobility
  
% This file is part of 
%
%            SECS2D - A 2-D Drift--Diffusion Semiconductor Device Simulator
%         -------------------------------------------------------------------
%            Copyright (C) 2004-2006  Carlo de Falco
%
%
%
%  SECS2D is free software; you can redistribute it and/or modify
%  it under the terms of the GNU General Public License as published by
%  the Free Software Foundation; either version 2 of the License, or
%  (at your option) any later version.
%
%  SECS2D is distributed in the hope that it will be useful,
%  but WITHOUT ANY WARRANTY; without even the implied warranty of
%  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%  GNU General Public License for more details.
%
%  You should have received a copy of the GNU General Public License
%  along with SECS2D; If not, see <http://www.gnu.org/licenses/>.



  [Ex,Ey]= Updegrad(imesh,-V);
  [Fx,Fy]= Updegrad(imesh,F);
  fnmod  = sqrt(Fx.^2+Fy.^2);
  ef     = abs(Fx.*Ex+Fy.*Ey)./fnmod;
  
  if Ucolumns(ef)>Urows(ef)
    ef=ef';
  end
  
  mob = u0 ./ (1+(u0 .* ef ./ vsat).^b).^(1/b);
