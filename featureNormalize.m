function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       
%For all features find the mean and standard deviation of the columns and
%place in the appropriate vectors
for i=1:size(X, 2)
    %Find the average of the feature the loop is examining and place in
    %right spot
    mu(1,i) = mean(X(:,i));
    %Find standard deviation of the feature loop examines and place in
    %right spot
    sigma(1,i) = std(X(:,i));
end

%With the appropriate mean and standard deviation vectors saved, perform
%normalization on the X vector

for i=1:size(X, 2)
    %Demean the data
    X(:,i) = X(:,i) - mu(1,i);
    %Divide out spread
    X(:,i) = X(:,i)/sigma(1,i);
end

X_norm = X;    
    










% ============================================================

end
