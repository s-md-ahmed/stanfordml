function plotData()
  % Load data from the file
  data = load('ex1data1.txt');
  x = data(:, 1);  % First column
  y = data(:, 2);  % Second column

  % Create a scatter plot
  plot(x, y, 'rx', 'MarkerSize',5);

  % Label the axes
  xlabel('Population');
  ylabel('Profit');
end
plotData();
%PLOTDATA Plots the data points x and y into a new figure
%   PLOTDATA(x,y) plots the data points and gives the figure axes labels of
%   population and profit.

 % open a new figure window

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the training data into a figure using the
%               "figure" and "plot" commands. Set the axes labels using
%               the "xlabel" and "ylabel" commands. Assume the
%               population and revenue data have been passed in
%               as the x and y arguments of this function.
%
% Hint: You can use the 'rx' option with plot to have the markers
%       appear as red crosses. Furthermore, you can make the
%       markers larger by using plot(..., 'rx', 'MarkerSize', 10);





% ============================================================

