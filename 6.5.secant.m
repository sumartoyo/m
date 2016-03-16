% x[i+1] = x[i] − (δ x[i] f(x[i]))/(f(x[i] + δ x[i]) − f(x[i]))
% Problem Statement. Use the modified secant method to determine the mass of the
% bungee jumper with a drag coefficient of 0.25 kg/m to have a velocity of 36 m/s after 4 s of
% free fall. Note: The acceleration of gravity is 9.81 m/s^2 . Use an initial guess of 50 kg and a
% value of 10^−6 for the perturbation fraction.
% Solution. Inserting the parameters into Eq. (6.9) yields
% First iteration:
% x[0] = 50        f (x[0]) = −4.57938708
% x[0] + δ x[0] = 50.00005      f (x[0] + δx[0]) = −4.579381118
% x[1] = 50 − (10^−6 (50)(−4.57938708))/(−4.579381118 − (−4.57938708))
% = 88.39931 (|ε[t]| = 38.1%; |ε[a]| = 43.4%)
% Second iteration:
% x[1] = 88.39931      f (x[1]) = −1.69220771
% x[1] + δ x[1] = 88.39940      f (x[1] + δ x[1]) = −1.692203516
% x[2] = 88.39931 − (10^−6 (88.39931)(−1.69220771))/(−1.692203516 − (−1.69220771))
% = 124.08970 (|ε[t]| = 13.1%; |ε[a]| = 28.76%)
% The calculation can be continued to yield
% i     x[i]     |ε[t]|[r]%        |ε[a]|[r]%
