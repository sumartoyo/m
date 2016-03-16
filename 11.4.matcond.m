% Problem Statement. Use MATLAB to evaluate both the norms and condition numbers
% for the scaled Hilbert matrix previously analyzed in Example 11.3:
% [A] = [1 1/2 1/3; 1 2/3 1/2; 1 3/4 3/5]
% (a) As in Example 11.3, first compute the row-sum versions ( p = inf ). (b) Also compute
% the Frobenius ( p = 'fro' ) and the spectral ( p = 2) condition numbers.
% Solution: (a) First, enter the matrix:
A = [1 1/2 1/3;1 2/3 1/2;1 3/4 3/5];
% Then, the row-sum norm and condition number can be computed as
norm(A,inf)
cond(A,inf)
% These results correspond to those that were calculated by hand in Example 11.3.
% (b) The condition numbers based on the Frobenius and spectral norms are
cond(A,'fro')
cond(A)
