load('ex7data2.mat');
centroids = [3 3; 6 2; 8 5];
K = size(centroids, 1);
idx = zeros(size(X,1), 1);

[m n] = size(X);
centroids = zeros(K, n);
size(centroids, 1)
