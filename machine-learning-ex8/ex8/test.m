load('ex8data1.mat');
[m, n] = size(X);
mu = zeros(n, 1);
sigma2 = zeros(n, 1);
for i=1:n
  mu(i) = (1 / m) * sum(X(:, i));
endfor
mu