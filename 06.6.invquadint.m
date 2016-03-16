% Problem Statement. Develop quadratic equations in both x and y for the data points
% depicted in Fig. 6.9: (1, 2), (2, 1), and (4, 5). For the first, y = f(x), employ the quadratic
% formula to illustrate that the roots are complex. For the latter, x = g(y), use inverse qua-
% dratic interpolation (Eq. 6.11) to determine the root estimate.
% Solution. By reversing the x’s and y’s, Eq. (6.10) can be used to generate a quadratic in x
% as
% f(x) = ((x − 2)(x − 4)/(1 − 2)(1 − 4))*2 + ((x − 1)(x − 4)/(2 − 1)(2 − 4))*1 + ((x − 1)(x − 2)/(4 − 1)(4 − 2))*5
% or collecting terms
% f(x) = x^2 − 4x + 5
% This equation was used to generate the parabola, y = f(x), in Fig. 6.9. The quadratic for-
% mula can be used to determine that the roots for this case are complex,
% x = (4 ± √((−4) 2 − 4(1)(5)))/2 = 2 ± i
% Equation (6.10) can be used to generate the quadratic in y as
% g(y) = (((y − 1)(y − 5))/(2 − 1)(2 − 5))*1 + (((y − 2)(y − 5))/(1 − 2)(1 − 5))*2 + (((y − 2)(y − 1))/(5 − 2)(5 − 1))*4
% or collecting terms:
% g(y) = 0.5x^2 − 2.5x + 4
% Finally, Eq. (6.11) can be used to determine the root as
% x[i+1] = (−1(−5)/(2 − 1)(2 − 5))*1 + (−2(−5)/(1 − 2)(1 − 5))*2 + (−2(−1)/(5 − 2)(5 − 1))*4 = 4
