% Problem Statement. Use simple fixed-point iteration to locate the root of f (x) = e^−x − x.
% Solution. The function can be separated directly and expressed in the form of Eq. (6.2) as
% x[i+1] = e^(−x[i])
% Starting with an initial guess of x 0 = 0, this iterative equation can be applied to compute:
% i     x[i]     |ε[a]|[r]%       |ε[t]|[r] %       |ε[t]|[i] / |ε[t]|[i−1]
% Thus, each iteration brings the estimate closer to the true value of the root: 0.56714329.
