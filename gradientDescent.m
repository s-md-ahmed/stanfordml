function [theta] = gradientDescent()
  data = load('ex1data1.txt');
  X = data(:, 1);
  y = data(:, 2);
  theta = zeros(2, 1);
  X = [ones(size(X, 1), 1), X];  % Add a column of ones for the intercept term
  m = length(y); % number of training examples
  num_iters = 1500;
  alpha = 0.01;
  for iter = 1:num_iters
      % Calculate the gradient and update theta
      theta = theta - (alpha / m) * X' * (X * theta - y);
  end
end
function J=costfunc()
  data = load('ex1data1.txt');

% Extract 'X' and 'y' from the loaded data
X = data(:, 1);
y = data(:, 2);

% Add a column of ones to 'X' for the intercept term
X = [ones(size(X, 1), 1), X];

% Initialize 'theta' with zeros
theta = gradientDescent();
  m = length(y);
  h = X * theta;
  squared_error = (h - y).^2;
  J = (1 / (2 * m)) * sum(squared_error);
end
function plotData()
  % Load data from the file
  data = load('ex1data1.txt');
  x = data(:, 1);  % First column
  y = data(:, 2);  % Second column

  % Create a scatter plot
  plot(x, y, 'rx', 'MarkerSize', 5);
  hold on;  % This allows you to overlay plots on the same figure.

  % Label the axes
  xlabel('Population');
  ylabel('Profit');
  % Perform gradient descent to obtain theta
  theta = gradientDescent();

  % Calculate the predicted y values using the linear regression equation
  predicted_y = theta(1) + theta(2) * x;

  % Plot the linear regression line
  plot(x, predicted_y, '-b', 'LineWidth',1);

  % Add a legend to the plot
  legend('Training data', 'Linear regression');

  hold off;  % Release the current figure so that further plots won't overlay on this one.

end
costfunc();
% Run the plotData function to visualize the data and linear regression line
plotData();
