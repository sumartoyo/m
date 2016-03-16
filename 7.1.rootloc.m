% 7.1.rootloc.m
% Problem Statement. Determine the time and magnitude of the peak elevation based on
% Eq. (7.1). Use the following parameter values for your calculation: g = 9.81 m/s^2 ,
% z[0] = 100 m, v[0] = 55 m/s, m = 80 kg, and c = 15 kg/s.
% Solution. Equation (7.1) can be differentiated to give
% dz/dt = v[0] e^−(c/m)t − (mg/c)(1 − e^−(c/m)t)
% Note that because v = dz/dt , this is actually the equation for the velocity. The maximum
% elevation occurs at the value of t that drives this equation to zero. Thus, the problem
% amounts to determining the root. For this case, this can be accomplished by setting the de-
% rivative to zero and solving Eq. (E7.1.1) analytically for
% t = m/c ln(1 + c v[0]/mg)
% Substituting the parameters gives
% t = 80/15 ln(1 + 15(55)/80(9.81)) = 3.83166 s
% This value along with the parameters can then be substituted into Eq. (7.1) to compute the
% maximum elevation as
% z = 100 + 80/15 (50 + 80(9.81)/15) (1 − e^−(15/80)3.83166) − 80(9.81)/15 (3.83166) = 192.8609 m
% We can verify that the result is a maximum by differentiating Eq. (E7.1.1) to obtain the
% second derivative
% d'[z]/d[t]' = − c/m v[0] e^−(c/m)t − ge^−(c/m)t = −9.81 m/s^2
% The fact that the second derivative is negative tells us that we have a maximum. Further,
% the result makes physical sense since the acceleration should be solely equal to the force of
% gravity at the maximum when the vertical velocity (and hence drag) is zero.
% Although an analytical solution was possible for this case, we could have obtained the
% same result using the root-location methods described in Chaps. 5 and 6. This will be left
% as a homework exercise.
