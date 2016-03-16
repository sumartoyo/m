% Problem Statement. Complete the problem initiated in Example 10.1 by generating the
% final solution with forward and back substitution.
% Solution. As just stated, the intent of forward substitution is to impose the elimination
% manipulations that we had formerly applied to [A] on the right-hand-side vector {b}. Recall
% that the system being solved is
% [3 −0.1 −0.2; 0.1 7 −0.3; 0.3 −0.2 10] [x[1]; x[2]; x[3]] = [7.85; −19.3; 71.4]
% and that the forward-elimination phase of conventional Gauss elimination resulted in
% [3 −0.1 −0.2; 0 7.00333 −0.293333; 0 0 10.0120] [x[1]; x[2]; x[3]] = [7.85; −19.5617; 70.0843]
% The forward-substitution phase is implemented by applying Eq. (10.8):
% [1 0 0; 0.0333333 1 0; 0.100000 −0.0271300 1] [d[1]; d[2]; d[3]] = [7.85; −19.3; 71.4]
% or multiplying out the left-hand side:
% d[1] = 7.85
% 0.0333333 d[1] + d[2] = −19.3
% 0.100000 d[1] − 0.0271300 d[2] + d[3] = 71.4
% We can solve the first equation for d[1] = 7.85, which can be substituted into the second
% equation to solve for
% d[2] = −19.3 − 0.0333333(7.85) = −19.5617
% Both d[1] and d[2] can be substituted into the third equation to give
% d[3] = 71.4 − 0.1(7.85) + 0.02713(−19.5617) = 70.0843
% Thus,
% {d} = [7.85; −19.5617; 70.0843]
% This result can then be substituted into Eq. (10.3), [U]{x} = {d}:
% [3 −0.1 −0.2; 0 7.00333 −0.293333; 0 0 10.0120] [x[1]; x[2]; x[3]] = [7.85; −19.5617; 70.0843]
% which can be solved by back substitution (see Example 9.3 for details) for the final solution:
% {x} = [3; −2.5; 7.00003]
