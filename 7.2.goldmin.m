% Problem Statement. Determine the time and magnitude of the peak elevation based on
% Eq. (7.1). Use the following parameter values for your calculation: g = 9.81 m/s^2 ,
% z[0] = 100 m, v[0] = 55 m/s, m = 80 kg, and c = 15 kg/s.
% Solution.
g=9.81;v0=55;m=80;c=15;z0=100;
z=@(t) -(z0+m/c*(v0+m*g/c)*(1-exp(-c/m*t))-m*g/c*t);
[xmin,fmin,ea,iter]=goldmin(z,0,8)
