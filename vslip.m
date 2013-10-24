function [ vslipmag ] = vslip( theta2, L2, omega2, theta4)
%vslip Finds the magnitude of v_slip, given other values.
%   Analytical expression of the graphical mathod taught in class.  Uses dotproducts to find vslip.

O4A_hat = [cosd(theta4) sind(theta4)];
vtrans_hat = [cosd(theta4+90) sind(theta4+90)];
v2 = L2*omega2 .* [cosd(theta2+90) sind(theta2+90)];
vtrans = dot(v2,vtrans_hat).*vtrans_hat;
vslip = vtrans - v2;

vslipmag = norm(vslip,2);




end

