function [ vslipmag ] = vslip( theta2, L2, omega2, theta4)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

O4A_hat = [cosd(theta4) sind(theta4)];
vtrans_hat = [cosd(theta4+90) sind(theta4+90)];
v2 = L2*omega2 .* [cosd(theta2+90) sind(theta2+90)];
vtrans = dot(v2,vtrans_hat).*vtrans_hat;
vslip = vtrans - v2;

vslipmag = norm(vslip,2);




end

