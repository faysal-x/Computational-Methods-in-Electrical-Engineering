f = @ (x) x*exp(x) - 1;
a = 0;
b = 1; 
n = 20;

if f(a)*f(b) < 0
    for i = 1:n;
        c = (a + b)/2;
        if f(a)*f(c) < 0
            b = c;
        elseif f(b)*f(c) < 0
            a = c;
        end
    end
    fprintf('The root is Approximately: %.9f', c);

else
    disp('There is no root of this function, Try using different intervals.');
end
