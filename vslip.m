function [ vslipmag ] = vslip( theta2,L2,omega2, O4O2, degGround )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

theta4 = atan2d(L2*sind(theta2).+O4O2*sind(degGround),L2.*cosd(theta2).+O4O2*cosd(degGround));
O4A = (L2*sind(theta2)+O4O2*sind(degGround))./(sind(theta4));

O4A_hat = [cosd(theta4) sind(theta4)];
vtrans_hat = [cosd(theta4+90) sind(theta4+90)];
v2 = L2*omega2 .* [cosd(theta2+90) sind(theta2+90)];
vtrans = dot(v2,vtrans_hat).*vtrans_hat;
vslip = vtrans - v2;

vslipmag = norm(vslip,2);




end

