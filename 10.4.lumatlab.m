% Problem Statement. Use MATLAB to compute the LU factorization and find the
% solution for the same linear system analyzed in Examples 10.1 and 10.2:
% [3 −0.1 −0.2; 0.1 7 −0.3; 0.3 −0.2 10] [x[1]; x[2]; x[3]] = [7.85; −19.3; 71.4]
% Solution. The coefficient matrix and the right-hand-side vector can be entered in stan-
% dard fashion as
A = [3 -.1 -.2;.1 7 -.3;.3 -.2 10];
b = [7.85; -19.3; 71.4];
% Next, the LU factorization can be computed with
[L,U] = lu(A)
% This is the same result that we obtained by hand in Example 10.1. We can test that it is cor-
% rect by computing the original matrix as
L*U
% To generate the solution, we first compute
d = L\b
% And then use this result to compute the solution
x = U\d
% These results conform to those obtained by hand in Example 10.2.
