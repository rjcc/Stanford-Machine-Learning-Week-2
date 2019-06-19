function [theta] = normalEqn(X, y)
%NORMALEQN Computes the closed-form solution to linear regression 
%   NORMALEQN(X,y) computes the closed-form solution to linear 
%   regression using the normal equations.

%The number of training examples
m = length(y);
theta = zeros(size(X, 2), 1);


% ====================== YOUR CODE HERE ======================
% Instructions: Complete the code to compute the closed form solution
%               to linear regression and put the result in theta.
%

% ---------------------- Sample Solution ----------------------
square = X'*X
inverse = inv(square)
tranY = X'*y
theta = inverse*tranY;



% -------------------------------------------------------------


% ============================================================

end
