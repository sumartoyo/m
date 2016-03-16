% Problem Statement. Use successive substitution to determine the roots of Eq. (12.6).
% Note that a correct pair of roots is x[1] = 2 and x[2] = 3. Initiate the computation with guesses
% of x[1] = 1.5 and x[2] = 3.5.
% Solution. Equation (12.6a) can be solved for
% x[1] = (10 − x[1]^2)/x[2]
% and Eq. (12.6b) can be solved for
% x[2] = 57 − 3 x[1] x[2]^2
% On the basis of the initial guesses, Eq. (E12.3.1) can be used to determine a new value
% of x[1] :
% x[1] = (10 − (1.5)^2)/3.5 = 2.21429
% Thus, the approach seems to be diverging. This behavior is even more pronounced on the
% second iteration:
% x[1] = (10 − (2.21429)^2)/−24.37516 = −0.20910
% x[2] = 57 − 3(−0.20910)(−24.37516)^2 = 429.709
% Obviously, the approach is deteriorating.
% Now we will repeat the computation but with the original equations set up in a differ-
% ent format. For example, an alternative solution of Eq. (12.6a) is
% x[1] = √(10 − x[1] x[2])
% and of Eq. (12.6b) is
% x[2] = √((57 − x[2])/3x[1])
% Now the results are more satisfactory:
% x[1] = √(10 − 1.5(3.5)) = 2.17945
% x[2] = √((57 − 3.5)/3(2.17945)) = 2.86051
% x[1] = √(10 − 2.17945(2.86051)) = 1.94053
% x[2] = √((57 − 2.86051)/3(1.94053)) = 3.04955
% Thus, the approach is converging on the true values of x[1] = 2 and x[2] = 3.
