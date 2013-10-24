function [ theta3_plus, theta4_plus ] = PosAnalysis( d,a,b,c,theta_2 )
%POSANALYSIS Determines the value of theta3 and theta4 given other measurements.
%   Uses equation from pg. 183, section 4.5 of the custom book used by Carl 
%Moore at FSU, Fall 2013.

Ax = a*cosd(theta_2);
Ay = a*sind(theta_2);

P = ((Ay.^2)/(Ax-d).^2) + 1;
S = (a.^2-b.^2+c.^2-d.^2)./(2.*(Ax-d));
Q = (2.*Ay.*(d-S))./(Ax-d);
R = (d-S).^2-c.^2;

By_plus = (-Q+sqrt(Q.^2-4.*P.*R))./(2.*P);
By_minus = (-Q-sqrt(Q.^2-4.*P.*R))./(2.*P);

Bx_plus = S - (2.*Ay.*By_plus)./(2.*(Ax-d));
Bx_minus = S - (2.*Ay.*By_minus)/(2.*(Ax-d));  %this could probably be done better with an anonymous function

    theta3_plus = atan2d((By_plus-Ay),(Bx_plus-Ax));
    theta4_plus = atan2d(By_plus,(Bx_plus-d));
    
end

