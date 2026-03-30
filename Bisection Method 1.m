Example 1:
----------------------------------------

f = @ (x) x^3 - x - 1;
a = 1; 
b = 2; 
n = 30;

if f(a)*f(b) < 0;
    for i = 1:n;
        c = (a + b)/2;
        if f(a)*f(c) < 0;
            b = c;
        elseif f(b)*f(c) < 0;
            a = c;
        end
    end
fprintf('The root is approx: %.6f', c);

else
    disp('There is no root!')
end
