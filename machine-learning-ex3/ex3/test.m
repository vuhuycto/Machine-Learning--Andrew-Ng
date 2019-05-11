load('ex3data1.mat');
load('ex3weights.mat');
X = [ones(size(X, 1), 1) X];
a2 = sigmoid(X*Theta1');
a2 = [ones(size(a2, 1), 1) a2];
[a3, i] = max(sigmoid(a2*Theta2'), [], 2);
size(a3)