data = load('ex2data2.txt');
X = data(:, [1, 2]);
X1 = X(:,1);
X2 = X(:,2);
out = ones(size(X(:,1)));
size(X(:,1))