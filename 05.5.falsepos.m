% Problem Statement. Use false position to solve the same problem approached graphi-
% cally and with bisection in Examples 5.1 and 5.3.
% Solution. As in Example 5.3, initiate the computation with guesses of x[l] = 50 and
% x[u] = 200.
% First iteration:
% x[l] = 50    f (x[l]) = −4.579387
% x[u] = 200   f (x[u]) = 0.860291
% x[r] = 200 − (0.860291(50 − 200)/(−4.579387 − 0.860291))= 176.2773
% which has a true relative error of 23.5%.
% Second iteration:
% f (x[l]) f (x[r]) = −2.592732
% Therefore, the root lies in the first subinterval, and x r becomes the upper limit for the next
% iteration, x u = 176.2773.
% x[l] = 50    f (x[l]) = −4.579387
% x[u] = 176.2773  f (x[u]) = 0.566174
% x[r] = 176.2773 − (0.566174(50 − 176.2773)/(−4.579387 − 0.566174))= 162.3828
% which has true and approximate relative errors of 13.76% and 8.56%, respectively. Addi-
% tional iterations can be performed to refine the estimates of the root.
