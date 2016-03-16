% Problem Statement. Use the following equation to explore how MATLAB can be em-
% ployed to manipulate polynomials:
% f[5](x) = x^5 − 3.5x^4 + 2.75x^3 + 2.125x^2 − 3.875x + 1.25
% Note that this polynomial has three real roots: 0.5, −1.0, and 2; and one pair of complex
% roots: 1 ± 0.5i.
% Solution. Polynomials are entered into MATLAB by storing the coefficients as a row
% vector. For example, entering the following line stores the coefficients in the vector a :
a = [1 -3.5 2.75 2.125 -3.875 1.25];
% We can then proceed to manipulate the polynomial. For example we can evaluate it at
% x = 1, by typing
polyval(a,1)
% with the result, 1(1)^5 − 3.5(1)^4 + 2.75(1)^3 + 2.125(1)^2 − 3.875(1) + 1.25 = −0.25:
% We can create a quadratic polynomial that has roots corresponding to two of the
% original roots of Eq. (E6.8.1): 0.5 and −1. This quadratic is (x − 0.5)(x + 1) = x^2 +
% 0.5x − 0.5. It can be entered into MATLAB as the vector b :
b = [1 .5 -.5]
% Note that the poly function can be used to perform the same task as in
b = poly([0.5 -1])
% We can divide this polynomial into the original polynomial by
[q,r] = deconv(a,b)
% with the result being a quotient (a third-order polynomial, q) and a remainder (r)
% Because the polynomial is a perfect divisor, the remainder polynomial has zero coeffi-
% cients. Now, the roots of the quotient polynomial can be determined as
x = roots(q)
% with the expected result that the remaining roots of the original polynomial Eq. (E6.8.1) are
% found:
% We can now multiply q by b to come up with the original polynomial:
a = conv(q,b)
% We can then determine all the roots of the original polynomial by
x = roots(a)
% Finally, we can return to the original polynomial again by using the poly function:
a = poly(x)
