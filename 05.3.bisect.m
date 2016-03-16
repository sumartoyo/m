% Problem Statement. Use bisection to solve the same problem approached graphically in
% Example 5.1.
% Solution.
fm=@(m) sqrt(9.81*m/0.25)*tanh(sqrt(9.81*0.25/m)*4)-36;
[mass fx ea iter]=bisect(fm,40,200)
