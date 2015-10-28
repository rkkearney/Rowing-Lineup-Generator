function rowerforce = powerconverter(power,strokerate)
% Power to Force
arclength = (pi/4)*(2*5.8);      % for idealized stroke of 4 man boat
% power = force*distance/time
time = ((1/3)*60)/strokerate;
rowerforce = (power*time)/arclength;