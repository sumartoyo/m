% Problem Statement. Use the M-file incsearch (Fig. 5.4) to identify brackets within the
% interval [3, 6] for the function:
% f (x) = sin(10x) + cos(3x)
% Solution. The MATLAB session using the default number of intervals (50) is
incsearch(@(x) sin(10*x)+cos(3*x),3,6)
