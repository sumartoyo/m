% Problem Statement. Use the Gauss-Seidel method to obtain the solution for
% 3x[1] − 0.1x[2] − 0.2x[3] = 7.85
% 0.1x[1] + 7x[2] − 0.3x[3] = −19.3
% 0.3x[1] − 0.2x[2] + 10x[3] = 71.4
% Note that the solution is x[1] = 3, x[2] = −2.5, and x[3] = 7.
% Solution. First, solve each of the equations for its unknown on the diagonal:
% x[1] = (7.85 + 0.1x[2] + 0.2x[3])/3
% x[2] = (−19.3 − 0.1x[1] + 0.3x[3])/7
% x[3] = (71.4 − 0.3x[1] + 0.2x[2])/10
% By assuming that x[2] and x[3] are zero, Eq. (E12.1.1) can be used to compute
% x[1] = (7.85 + 0.1(0) + 0.2(0))/3 = 2.616667
% This value, along with the assumed value of x[3] = 0, can be substituted into Eq. (E12.1.2)
% to calculate
% x[2] = (−19.3 − 0.1(2.616667) + 0.3(0))/7 = −2.794524
% The first iteration is completed by substituting the calculated values for x[1] and x[2] into
% Eq. (E12.1.3) to yield
% x[3] = (71.4 − 0.3(2.616667) + 0.2(−2.794524))/10 = 7.005610
% For the second iteration, the same process is repeated to compute
% x[1] = (7.85 + 0.1(−2.794524) + 0.2(7.005610))/3 = 2.990557
% x[2] = (−19.3 − 0.1(2.990557) + 0.3(7.005610))/7 = −2.499625
% x[3] = (71.4 − 0.3(2.990557) + 0.2(−2.499625))/10 = 7.000291
% The method is, therefore, converging on the true solution. Additional iterations could be
% applied to improve the answers. However, in an actual problem, we would not know the
% true answer a priori. Consequently, Eq. (12.2) provides a means to estimate the error. For
% example, for x[1] :
% ε[a][1] = |(2.990557 − 2.616667)/2.990557| × 100% = 12.5%
% For x[2] and x[3] , the error estimates are ε[a][2] = 11.8% and ε[a][3] = 0.076%. Note that, as was
% the case when determining roots of a single equation, formulations such as Eq. (12.2) usu-
% ally provide a conservative appraisal of convergence. Thus, when they are met, they ensure
% that the result is known to at least the tolerance specified by ε[s].

A=[3 -0.1 -0.2; 0.1 7 -0.3; 0.3 -0.2 10];
b=[7.85; -19.3; 71.4];
GaussSeidel(A,b)

% x[i][new] = λ x[i][new] + (1 − λ) x[i][old]
% Problem Statement. Solve the following system with Gauss-Seidel using overrelaxation
% (λ = 1.2) and a stopping criterion of ε[s] = 10%:
% −3x[1] + 12x[2] = 9
% 10x[1] − 2x[2] = 8
% Solution. First rearrange the equations so that they are diagonally dominant and solve the
% first equation for x[1] and the second for x[2] :
% x[1] = (8 + 2x[2])/10 = 0.8 + 0.2x[2]
% x[2] = (9 + 3x[1])/12 = 0.75 + 0.25x[1]
% First iteration: Using initial guesses of x[1] = x[2] = 0, we can solve for x[1] :
% x[1] = 0.8 + 0.2(0) = 0.8
% Before solving for x[2] , we first apply relaxation to our result for x[1] :
% x[1][r] = 1.2(0.8) − 0.2(0) = 0.96
% We use the subscript r to indicate that this is the “relaxed” value. This result is then used to
% compute x[2] :
% x[2] = 0.75 + 0.25(0.96) = 0.99
% We then apply relaxation to this result to give
% x[2][r] = 1.2(0.99) − 0.2(0) = 1.188
% At this point, we could compute estimated errors with Eq. (12.2). However, since we
% started with assumed values of zero, the errors for both variables will be 100%.
% Second iteration: Using the same procedure as for the first iteration, the second iteration
% yields
% x[1] = 0.8 + 0.2(1.188) = 1.0376
% x[1][r] = 1.2(1.0376) − 0.2(0.96) = 1.05312
% ε[a][1] = |(1.05312 − 0.96)/1.05312| × 100% = 8.84%
% x[2] = 0.75 + 0.25(1.05312) = 1.01328
% x[2][r] = 1.2(1.01328) − 0.2(1.188) = 0.978336
% ε[a][2] = |(0.978336 − 1.188)/0.978336| × 100% = 21.43%
% Because we have now have nonzero values from the first iteration, we can compute ap-
% proximate error estimates as each new value is computed. At this point, although the error
% estimate for the first unknown has fallen below the 10% stopping criterion, the second has
% not. Hence, we must implement another iteration.
% Third iteration:
% x[1] = 0.8 + 0.2(0.978336) = 0.995667
% x[1][r] = 1.2(0.995667) − 0.2(1.05312) = 0.984177
% ε[a][1] = |(0.984177 − 1.05312)/0.984177| × 100% = 7.01%
% x[2] = 0.75 + 0.25(0.984177) = 0.996044
% x[2][r] = 1.2(0.996044) − 0.2(0.978336) = 0.999586
% ε[a][2] = |(0.999586 − 0.978336)/0.999586| × 100% = 2.13%
% At this point, we can terminate the computation because both error estimates have fallen
% below the 10% stopping criterion. The results at this juncture, x[1] = 0.984177 and
% x[2] = 0.999586, are converging on the exact solution of x[1] = x[2] = 1.
