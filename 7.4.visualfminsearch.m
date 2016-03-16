% Problem Statement. Use MATLAB’s graphical capabilities to display the following
% function and visually estimate its minimum in the range –2 ≤ x 1 ≤ 0 and 0 ≤ x 2 ≤ 3:
% f(x[1], x[2]) = 2 + x[1] − x[2] + 2x[1]^2 + 2 x[1] x[2] + x[2]^2
% Solution. The following script generates contour and mesh plots of the function:
x=linspace(-2,0,40);y=linspace(0,3,40);
[X,Y] = meshgrid(x,y);
Z=2+X-Y+2*X.^2+2*X.*Y+Y.^2;
subplot(1,2,1);
cs=contour(X,Y,Z);clabel(cs);
xlabel('x_1');ylabel('x_2');
title('(a) Contour plot');grid;
subplot(1,2,2);
cs=surfc(X,Y,Z);
zmin=floor(min(Z));
zmax=ceil(max(Z));
xlabel('x_1');ylabel('x_2');zlabel('f(x_1,x_2)');
title('(b) Mesh plot');
% As displayed in Fig. 7.9, both plots indicate that function has a minimum value of about
% f(x[1], x[2]) = 0 to 1 located at about x[1] = −1 and x[2] = 1.5.

% Here is a simple MATLAB session that uses fminsearch to determine minimum for
% the function we just graphed
f=@(x) 2+x(1)-x(2)+2*x(1)^2+2*x(1)*x(2)+x(2)^2;
[x,fval]=fminsearch(f,[-0.5,0.5])
