function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and
%   sigma. You should complete this function to return the optimal C and
%   sigma based on a cross-validation set.
%
% Values to try for C and sigma
C_values = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
sigma_values = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
% Initialize variables to store the best values
best_error = inf;
C = 1;
sigma = 0.3;
for i = 1:length(C_values)
    for j = 1:length(sigma_values)
        current_C = C_values(i);
        current_sigma = sigma_values(j);
        % Train the SVM model with current C and sigma
        model = svmTrain(X, y, current_C, @(x1, x2) gaussianKernel(x1, x2, current_sigma));
        % Make predictions on the cross-validation set
        predictions = svmPredict(model, Xval);
        % Calculate prediction error
        error = mean(double(predictions ~= yval));
        % Check if this is the best combination so far
        if error < best_error
            best_error = error;
            C = current_C;
            sigma = current_sigma;
        end
    end
end
fprintf('Best C: %f\n', C);
fprintf('Best sigma: %f\n', sigma);

% =========================================================================
end

