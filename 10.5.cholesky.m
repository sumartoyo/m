% u[i][i] = √(a[i][i] − sum(1, i-1, @(k) u[k][i]^2))
% u[i][j] = (a[i][j] − sum(1, i-1, @(k) u[k][i] u[k][j])) / u[i][i]
% Problem Statement. Compute the Cholesky factorization for the symmetric matrix
% [A] = [6 15 55; 15 55 225; 55 225 979]
% Solution. For the first row (i = 1), Eq. (10.15) is employed to compute
% u[1][1] = √a[1][1] = √6 = 2.44949
% Then, Eq. (10.16) can be used to determine
% u[1][2] = a[1][2] / u[1][1] = 15/2.44949 = 6.123724
% u[1][3] = a[1][3] / u[1][1] = 55/2.44949 = 22.45366
% For the second row (i = 2):
% u[2][2] = √(a[2][2] − u[1][2]^2) = √((55 − (6.123724))^2) = 4.1833
% u[2][3] = (a[2][3] − u[1][2] u[1][3])/u[2][2] = (225 − 6.123724(22.45366))/4.1833 = 20.9165
% For the third row (i = 3):
% u[3][3] = √(a[3][3] − u[1][3]^2 − u[2][3]^2) = √(979 − (22.45366)^2 − (20.9165)^2) = 6.110101
% Thus, the Cholesky factorization yields
% [U] = [2.44949 6.123724 22.45366; 0 4.1833 20.9165; 0 0 6.110101]
% The validity of this factorization can be verified by substituting it and its transpose
% into Eq. (10.14) to see if their product yields the original matrix [A]. This is left for an
% exercise.

% Use MATLAB to compute the Cholesky factorization
% The matrix is entered in standard fashion as
A = [6 15 55; 15 55 225; 55 225 979];
% A right-hand-side vector that is the sum of the rows of [A] can be generated as
b = [sum(A(1,:)); sum(A(2,:)); sum(A(3,:))]
% Next, the Cholesky factorization can be computed with
U = chol(A)
% We can test that this is correct by computing the original matrix as
U'*U
% To generate the solution, we first compute
d = U'\b
% And then use this result to compute the solution
x = U\d
