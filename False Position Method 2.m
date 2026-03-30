f = @ (x) cos(x) - x*e^x 
a = 0;
b = 1;
n = 30;

if f(a)*f(b) < 0
    for i = 1:n
        c = (a*f(b)-b*f(a))/(f(b)-f(a));
        if f(a)*f(c) < 0
            b = c;
        elseif f(b)*f(c) < 0
            a = c;
        end
    end
    fprintf('The approximate root of the function is: %.7f\n', c);
    fprintf('Number of iterations: %d', i);

else 
    disp('There is no root of this function, try using different intervals.');
end
