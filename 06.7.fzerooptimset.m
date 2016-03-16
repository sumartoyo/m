% Problem Statement. Recall that in Example 6.3, we found the positive root of f(x) =
% x^10 − 1 using the Newton-Raphson method with an initial guess of 0.5. Solve the same
% problem with optimset and fzero .
% Solution. An interactive MATLAB session can be implemented as follows:
options = optimset('display','iter');
[x,fx] = fzero(@(x) x^10-1,0.5,options)
% Thus, after 25 iterations of searching, fzero finds a sign change. It then uses interpo-
% lation and bisection until it gets close enough to the root so that interpolation takes over and
% rapidly converges on the root.
% Suppose that we would like to use a less stringent tolerance. We can use the optimset
% function to set a low maximum tolerance and a less accurate estimate of the root results:
options = optimset ('tolx', 1e-3);
[x,fx] = fzero(@(x) x^10-1,0.5,options)
