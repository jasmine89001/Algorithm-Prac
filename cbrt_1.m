function y = cbrt_1( A , error )
% the newton iteration
% x(k+1) = x(k) - f(x(k))/f'(x(k))
% here f(x) = x^3 - A, then f'(x) = 3*x^2;

x0 = A;
x1 = (2*x0^3 + A)/(3*x0^2);
xx = x0;

while(abs(x1*x1*x1 - A)>=error && xx ~= x1)
    x1 = (2*x0^3 + A)/(3*x0^2);
    if xx==x1
        break;
    else
    xx = x0;
    x0 = x1;
    end % to break towo value cycle
end

y = x1;
end
