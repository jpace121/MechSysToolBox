function [ theta3_plus, theta4_plus, theta3_minus, theta4_minus ] = PosAnalysis( d,a,b,c,theta_2 )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

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
    
    theta3_minus = atan2d((By_minus-Ay),(Bx_minus-Ax));
    theta4_minus = atan2d(By_minus,(Bx_minus-d));
end

