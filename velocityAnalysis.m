function [ omega3,omega4 ] = angularVelocityAnalysis( a,b,c,theta2,theta3,theta4,omega2 )
%ANGULARVELOCITYANALYSIS Returns omega3 and omega4 given other values
%   From pg.317 in the Mech Sys Textbook used by Calr Moore at FSU Fall
%   2013.

omega3 = (a*omega2*sind(theta4-theta2))/(b*sind(theta3-theta4));
omega4 = (a*omega2*sind(theta2-theta3))/(c*sind(theta4-theta3));

end

