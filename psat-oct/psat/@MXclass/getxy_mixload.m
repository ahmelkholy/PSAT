function [x,y] = getxy_mixload(a,bus,x,y)

if ~a.n, return, end

h = find(ismember(a.bus,bus));

if ~isempty(h)
  x = [x; a.x(h); a.y(h)];
end