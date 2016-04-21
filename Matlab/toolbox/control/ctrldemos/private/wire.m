function wire(varargin)
%WIRE  Draw a wire

%   Author(s): A. DiVergilio
%   Copyright 1986-2002 The MathWorks, Inc.
%   $Revision: 1.7 $  $Date: 2002/04/10 06:41:27 $

%---Default properties
p = struct(...
   'Parent',[],...
   'XData',[1 2],...
   'YData',[1 1],...
   'LineWidth',2,...
   'LineStyle','-',...
   'Color','k',...
   'FontSize',12,...
   'FontWeight','normal',...
   'Name','',...
   'ArrowSize',0,...
   'Tag','',...
   'Clipping','off');
plist = fieldnames(p);

%---Merge user-specified properties
for i=1:2:nargin-1
   Property = pnmatch(varargin{i},plist);
   Value = varargin{i+1};
   p.(Property) = Value;
end
if isempty(p.Parent), p.Parent = gca; end

%---Draw a line
h=line(...
   'Parent',p.Parent,...
   'XData',p.XData,...
   'YData',p.YData,...
   'LineWidth',p.LineWidth,...
   'LineStyle',p.LineStyle,...
   'Color',p.Color,...
   'Tag',p.Tag,...
   'Clipping',p.Clipping);

%---Draw arrow head if requested
if p.ArrowSize>0
   x = p.XData;
   y = p.YData;
   a0 = angle((x(end)-x(end-1))+j*(y(end)-y(end-1))); % angle of last line segment
   hr = p.ArrowSize; % head radius
   ha = pi+[-.5 .5]; % head angles
   patch(...
      'Parent',p.Parent,...
      'XData',x(end)+[0 hr.*cos(a0+ha) 0],...
      'YData',y(end)+[0 hr.*sin(a0+ha) 0],...
      'EdgeColor',p.Color,...
      'FaceColor',p.Color,...
      'Tag',p.Tag,...
      'Clipping',p.Clipping);
   %---Adjust last segment of line so that it ends inside the arrowhead
   lr = sqrt((x(end)-x(end-1))^2 + (y(end)-y(end-1))^2);
   x(end) = x(end)-hr/2*cos(a0);
   y(end) = y(end)-hr/2*sin(a0);
   set(h,'XData',x,'YData',y);
end