% Newton-Raphson Method
% Finding the root of f(x) = x^3 - x - 1

f = @ (x) x^3 - x - 1; 
df = @ (x) 3*x^2 - 1; % The first derivative of f(x)
x0 = 1.5; % Initial guess
n = 30;   % Number of iterations

for i = 1:n
    % Check to prevent division by zero in case the derivative is 0
    if df(x0) == 0
        disp('Derivative is zero. Newton-Raphson fails.');
        break;
    end
    
    x1 = x0 - (f(x0) / df(x0));
    x0 = x1; % Update the guess for the next iteration
end

fprintf('The approximate root of the function is: %.7f\n', x1);
fprintf('Number of iterations: %d\n', n);
