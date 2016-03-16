% Problem Statement. Employ LU factorization to determine the matrix inverse for the
% system from Example 10.1:
% [A] = [3 −0.1 −0.2; 0.1 7 −0.3; 0.3 −0.2 10]
% Recall that the factorization resulted in the following lower and upper triangular matrices:
% [U] = [3 −0.1 −0.2; 0 7.00333 −0.293333; 0 0 10.0120]      [L] = [1 0 0; 0.0333333 1 0; 0.100000 −0.0271300 1]
% Solution. The first column of the matrix inverse can be determined by performing the
% forward-substitution solution procedure with a unit vector (with 1 in the first row) as the
% right-hand-side vector. Thus, the lower triangular system can be set up as (recall Eq. [10.8])
% [1 0 0; 0.0333333 1 0; 0.100000 −0.0271300 1] [d[1]; d[2]; d[3]] = [1; 0; 0]
% and solved with forward substitution for {d}^T = 1 −0.03333 −0.1009 . This vector
% can then be used as the right-hand side of the upper triangular system (recall Eq. [10.3]):
% [3 −0.1 −0.2; 0 7.00333 −0.293333; 0 0 10.0120] [x[1]; x[2]; x[3]] = [1; −0.03333; −0.1009]
% which can be solved by back substitution for {x}^T = 0.33249 −0.00518 −0.01008 ,
% which is the first column of the matrix inverse:
% [A]^−1 = [0.33249 0 0; −0.00518 0 0; −0.01008 0 0]
% To determine the second column, Eq. (10.8) is formulated as
% [1 0 0; 0.0333333 1 0; 0.100000 −0.0271300 1] [d[1]; d[2]; d[3]] = [0; 1; 0]
% This can be solved for {d}, and the results are used with Eq. (10.3) to determine {x}^T =
% 0.004944 0.142903 0.00271 , which is the second column of the matrix inverse:
% [A]^−1 = [0.33249 0.004944 0; −0.00518 0.142903 0; −0.01008 0.002710 0]
% Finally, the same procedures can be implemented with {b}^T = 0 0 1 to solve for
% {x}^T = 0.006798 0.004183 0.09988 , which is the final column of the matrix inverse:
% [A]^−1 = [0.33249 0.004944 0.006798; −0.00518 0.142903 0.004183; −0.01008 0.002710 0.099880]
% The validity of this result can be checked by verifying that [A][A]^−1 = [I].
