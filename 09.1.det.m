% The determinant can be computed directly in MATLAB with the det
% function. For example, using the system from the previous example:
A=[0.3 0.52 1;0.5 1 1.9;0.1 0.3 0.5];
D=det(A)
% Cramer’s rule can be applied to compute x[1] as in
A(:,1)=[-0.01;0.67;-0.44]
x1=det(A)/D
