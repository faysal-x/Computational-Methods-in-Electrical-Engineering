% Fixed-Point Iteration Method
% Finding the root of f(x) = x - exp(-x) = 0
% We rewrite this as x = exp(-x), so our g(x) is exp(-x)

g = @ (x) exp(-x);
x0 = 0; % Initial guess
n = 30; % Number of iterations

for i = 1:n
    x1 = g(x0);
    x0 = x1; % Update the guess for the next iteration
end

fprintf('The approximate root of the function is: %.7f\n', x1);
fprintf('Number of iterations: %d\n', n);
