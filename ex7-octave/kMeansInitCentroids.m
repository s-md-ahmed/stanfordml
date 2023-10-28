function centroids = kMeansInitCentroids(X, K)
% KMEANSINITCENTROIDS This function initializes K centroids that are to be
% used in K-Means on the dataset X
%   centroids = KMEANSINITCENTROIDS(X, K) returns K initial centroids to be
%   used with K-Means on the dataset X
%

% Randomly shuffle the dataset
m = size(X, 1);
rand_indices = randperm(m);

% Take the first K examples as initial centroids
centroids = X(rand_indices(1:K), :);
for iter = 1:100
% Cluster assignment step: Assign each data point to the
% closest centroid. idx(i) corresponds to cˆ(i), the index
% of the centroid assigned to example i
idx = findClosestCentroids(X, centroids);
% Move centroid step: Compute means based on centroid
% assignments
centroids = computeCentroids(X, idx, K);
end
end

