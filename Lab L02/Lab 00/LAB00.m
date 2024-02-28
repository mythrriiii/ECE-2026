%LAB #00: Introduction to MATLAB

%2.1 MATLAB Array Indexing
%a. Explaining the colon notation
% jkl = -4 : 1         assigns jkl to a vector from -4 to 1(both inclusive)
% with step size of 1
% jkl = -2 : 4 : 31    assigns jkl to a vector from -2 to 31
% (both inclusive) with step size of 4
% jkl = 87 : -2 : 63   assigns jkl to a vector from 87 to 63
% (both inclusive) with step size of 2
% tt = 2 : (1/80) : 3.1 assigns tt to a vector from 2 to 3.1
% (both inclusive) with a step of 1/80
% tpi = pi * [ 0:1/4:2 ]  assigns tpi to a vector from 0 to 2*pi 
% (both inclusive) with a step of pi/4

% "Learning how the operation ".*" works for vectors; compare array
% multiplication (dot-star) to matrix multiplication"
% * is matrix multiplication while . * is elementwise multiplication.
% for e.g.:[a,b,c].*[d,e,f] = [a*d, b*e, c*f]
% but [a,b,c]*[d,e,f]'= [ad + be + cf]
% Dimensions also matter: (1,4)*(1,4) must use .* while (1,4)*(4,1) can use
% regular matrix multiplication.

%%
%b. Extracting or inserting numbers in a vector.
% xx = [ zeros(1,5), linspace(0,1,6), ones(1,5) ]
% This creates a vector. zeros(1,5) returns an array of zeros of (1x5)
% dimensions. ones(1,5) returns an array of ones of (1x5) dimensions. 
% linspace(0,1,6) generates 6 points which are evenly spaced from 0 to 1.
% The linear spacing is calculated by (1-0)/(6-1) = 1/5 = 0.2

% xx(5:8)  returns elements 5 to 8 from xx
% size(xx) returns a vector of row by column dimensions of xx ( [1 16] )
% length(xx) returns the length of the largest array dimension in xx. That
% is 16. 
% xx(3:2:length(xx)) or xx(3:2:end) returns every second value from column
% 3 to the end.

%%
%c. Result of yy == xx; yy(4:2:8) = exp(0.5)*(1:2:5)
% assigns the values of exp(0.5)*(1:2:5) to every second index in yy from 4
% to 8 (both inclusive) 
% Statement:
% xx(2:2:end) = pi^exp(1)  assings value of pi^e to every even index

%%
%2.2 MATLAB Script Files
%a. Experimenting with vectors in MATLAB
% the values are assigned as -0.5 -0.5 1 repeatedly.
% xk(1) is -0.5. 
% xk(0) is not defined as array indices must be positive integers or 
% logical values.

%%
%b. vectorization
% yy = [zeros(1,81)];
% yy(1:81) = exp (-((-40:40)/10).*((-40:40)/20));
% plot(-40:40, yy)
% xlabel("x axis scaled x by 10")
% ylabel("values of yy")

% It is necessary to write yy(k+41) as array indexing begins at 1. 
% If we use yy(k) instead it would result in an error due to an incorrect 
% input of array index 0.
% The x axis is evenly spaced from -40 to 40 while the y xis is evenly
% spaced from 0 to 1

%%
%c. Plotting in MATLAB
% Vectors with .* individually multiply each corresponding component.

%%
%d. Arithmetic in vector and matrix forms
% Plot attached 