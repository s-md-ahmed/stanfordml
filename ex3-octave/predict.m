function p = predict(Theta1, Theta2, X)
    % Useful values
    m = size(X, 1);
    num_labels = size(Theta2, 1);

    % You need to return the following variables correctly
    p = zeros(size(X, 1), 1);

    % Add ones to the X data matrix
    X = [ones(m, 1) X];

    % ====================== YOUR CODE HERE ======================
    % Instructions: Complete the following code to make predictions using
    %               your learned neural network. You should set p to a
    %               vector containing labels between 1 to num_labels.
    %
    % Hint: The max function might come in useful. In particular, the max
    %       function can also return the index of the max element, for more
    %       information see 'help max'. If your examples are in rows, then, you
    %       can use max(A, [], 2) to obtain the max for each row.
    %

    % Compute activations for the hidden layer
    z2 = X * Theta1';
    a2 = sigmoid(z2);

    % Add ones to the a2 data matrix
    a2 = [ones(m, 1) a2];

    % Compute activations for the output layer
    z3 = a2 * Theta2';
    a3 = sigmoid(z3);
    disp(a3)
    % Find the class with the highest probability for each example
    [prob, p] = max(a3, [], 2);
    fprintf('Recognized Digits: %s\n', num2str(mod(p, 10)));
    % =========================================================================
end

