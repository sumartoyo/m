% Problem Statement. Derive an LU factorization based on the Gauss elimination per-
% formed previously in Example 9.3.
% Solution. In Example 9.3, we used Gauss elimination to solve a set of linear algebraic
% equations that had the following coefficient matrix:
% [A] = [3 −0.1 −0.2; 0.1 7 −0.3; 0.3 −0.2 10]
% After forward elimination, the following upper triangular matrix was obtained:
% [U] = [3 −0.1 −0.2; 0 7.00333 −0.293333; 0 0 10.0120]
% The factors employed to obtain the upper triangular matrix can be assembled into a lower
% triangular matrix. The elements a[2][1] and a[3][1] were eliminated by using the factors
% f[2][1] = 0.1/3 = 0.0333333     f[3][1] = 0.3/3 = 0.1000000
% and the element a 32 was eliminated by using the factor
% f[3][2] = −0.19/7.00333 = −0.0271300
% Thus, the lower triangular matrix is
% [L] = [1 0 0; 0.0333333 1 0; 0.100000 −0.0271300 1]
% Consequently, the LU factorization is
% [A] = [L][U] = [1 0 0; 0.0333333 1 0; 0.100000 −0.0271300 1] [3 −0.1 −0.2; 0 7.00333 −0.293333; 0 0 10.0120]
% This result can be verified by performing the multiplication of [L][U] to give
% [L][U] = [3 −0.1 −0.2; 0.0999999 7 −0.3; 0.3 −0.2 9.99996]
% where the minor discrepancies are due to roundoff.
