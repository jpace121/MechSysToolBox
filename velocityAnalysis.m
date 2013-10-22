function [ omega4, omega3 ] = velocityAnalysis( a, b, c, omega2, theta2, theta3, theta4 )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

omega3 = (a*omega2.*sind(theta4-theta2))./(b.*sind(theta3-theta4));
omega4 = (a.*omega2.*sind(theta2-theta3))./(c.*sind(theta4-theta3));
end

