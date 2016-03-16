% Problem Statement. Use the graphical approach to determine the mass of the bungee
% jumper with a drag coefficient of 0.25 kg/m to have a velocity of 36 m/s after 4 s of free
% fall. Note: The acceleration of gravity is 9.81 m/s^2 .
% Solution.
% The following MATLAB session sets up a plot of Eq. (5.2) versus mass:
cd = 0.25; g = 9.81; v = 36; t = 4;
mp = linspace(50,200);
fp = sqrt(g*mp/cd).*tanh(sqrt(g*cd./mp)*t)-v;
plot(mp,fp),grid
