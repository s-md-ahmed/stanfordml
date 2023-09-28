% Load data from the file
data = load('ex1data1.txt');

% Extract 'X' and 'y' from the loaded data
X = data(:, 1);
y = data(:, 2);

% Add a column of ones to 'X' for the intercept term
X = [ones(length(y), 1), X];

% Initialize 'theta' with zeros
theta = zeros(2, 1);

m = length(y);
h = X * theta;
squared_error = (h - y).^2;
J = (1 / (2 * m)) * sum(squared_error);

% Display the cost
fprintf('Cost: %f\n', J);

