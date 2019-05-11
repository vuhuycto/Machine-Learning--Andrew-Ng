load('ex4data1.mat');
load('ex4weights.mat');
nn_params = [Theta1(:) ; Theta2(:)];
m = size(X, 1);
X = [ones(m, 1) X];
y_recoded = zeros(num_labels, size(y, 1));
for i=1:num_labels
  y_recoded(i, :) = (y == i);
endfor
a1 = X;
z2 = a1*Theta1';
a2 = sigmoid(z2);
a2 = [ones(size(a2, 1), 1) a2];
z3 = a2*Theta2';
a3 = sigmoid(z3);
J = (1/m) * sum(sum(-y_recoded'.*log(a3) - (1-y_recoded)'.*log(1-a3))) + (lambda/(2*m)) * (sum(sum(Theta1(:, 2:end).^2)) + sum(sum(Theta2(:, 2:end).^2)));

##for t=1:m
##  a1 = X(t, :);
##  z1 = a1*Theta1';
##  a2 = sigmoid(z1);
##  a2 = [ones(size(a2, 1), 1) a2];
##  z2 = a2*Theta2';
##  a3 = sigmoid(z2);
##  d3 = a3 - 
##  d2 = Theta2(:, 2:end);
##  d2 = d3*Theta2.*sigmoidGradient(z2);
##  delta_2 = zeros(size(a2));
##  delta_2 += lower_delta_3*a2';
##  delta_1 = zeros(size(a1));
##  delta_1 += lower_delta_2*a1';
##end

d3 = a3 - y_recoded';
d2 = d3 * Theta2(:, 2:end) .* sigmoidGradient(z2);
delta_1 = d2' * a1;
delta_2 = d3' * a2;
Theta1_grad = (1/m) * delta_1;
Theta2_grad = (1/m) * delta_2;

size(Theta1(:, 2:end))