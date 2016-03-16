% Problem Statement. Solve the following tridiagonal system:
% [2.04 −1 0 0; −1 2.04 −1 0; 0 −1 2.04 −1; 0 0 −1 2.04] [x1; x2; x3; x4] = [40.8; 0.8; 0.8; 200.8]
% Solution.
e=[-1; -1; -1; -1];
f=[2.04; 2.04; 2.04; 2.04];
g=[-1; -1; -1; -1];
r=[40.8; 0.8; 0.8; 200.8];
Tridiag(e,f,g,r)
