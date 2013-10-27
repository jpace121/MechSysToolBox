function [ alpha3, alpha4] = accelerationAnalysis(theta2, theta3, theta4, omega2, omega3, omega4, alpha2, a, b, c)
%ACCELEARATIONANALYSIS Returns values for a alpha3 and alpha4 given other 
%   values.
%  from pg. 360 of the Mechanical Systems book used by Carl Moore at FSU, 
%   Fall 2013.

A = c*sind(theta4);
B = b*sind(theta3);
C = a.*alpha2.*sind(theta2)+a.*omega2.^2.*cosd(theta2)+b.*omega3.^2.*cosd(theta3) - c.*omega4.*cosd(theta4);
D = c.*cosd(theta4);
E = b.*cosd(theta3);
F = a.*alpha2.*cosd(theta2)-a.*omega2.^2.*sind(theta2)-b.*omega3.^2.*sind(theta3)+c.*omega4.^2.*sind(theta4);

alpha3 = (C.*D-A.*F)./(A.*E-B.*D);
alpha4 = (C.*E-B.*F)./(A.*E-B.*D);

end

