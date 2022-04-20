% Prof. Buswell Q14 script
% This code interpolates the location between two points

x = 6 ; % birthday day of the month + 5

x0 = 2 ; % given starting x location
y0 = 3 ; % given starting y location
x1 = 47 ; % given second x location
y1 = 13 ; % given second y location

y = (x-x0)*((y1-y0)/(x1-x0)) + y0 % interpoloation equation, solving for y

% running this code will give the answer y = 3.8889
