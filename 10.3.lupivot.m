% Problem Statement. Compute the LU factorization and find the solution for the same
% system analyzed in Example 9.4
% [0.0003 3.0000; 1.0000 1.0000] [x[1]; x[2]] = [2.0001; 1.0000]
% Solution. Before elimination, we set up the initial permutation matrix:
% [P] = [1.0000 0.0000; 0.0000 1.0000]
% We immediately see that pivoting is necessary, so prior to elimination we switch the rows:
% [A] = [1.0000 1.0000; 0.0003 3.0000]
% At the same time, we keep track of the pivot by switching the rows of the permutation
% matrix:
% [P] = [0.0000 1.0000; 1.0000 0.0000]
% We then eliminate a[2][1] by subtracting the factor l[2][1] = a[2][1]/a[1][1] = 0.0003/1 = 0.0003 from the
% second row of A. In so doing, we compute that the new value of a'[2][2] = 3 - 0.0003(1) =
% 2.9997. Thus, the elimination step is complete with the result:
% [U] = [1 1; 0 2.9997]      [L] = [1 0; 0.0003 1]
% Before implementing forward substitution, the permutation matrix is used to reorder
% the right-hand-side vector to reflect the pivots as in
% [P]{b} = [0.0000 1.0000; 1.0000 0.0000] [2.0001; 1] = [1; 2.0001]
% Then, forward substitution is applied as in
% [1 0; 0.0003 1] [d[1]; d[2]] = [1; 2.0001]
% which can be solved for d[1] = 1 and d[2] = 2.0001 − 0.0003(1) = 1.9998. At this point, the
% system is
% [1 1; 0 2.9997] [x[1]; x[2]] = [1; 1.9998]
% Applying back substitution gives the final result:
% x[2] = 1.9998/2.9997 = 0.66667
% x[1] = (1 − 1(0.66667))/1 = 0.33333
