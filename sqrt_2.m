function y = sqrt_2( A , error )
% the newton iteration
% x(k+1) = x(k) - f(x(k))/f'(x(k))
% here f(x) = x^2 - A, then f'(x) = 2*x;

x0 = A + 1/4;
x1 = (x0*x0 + A)/(2*x0);
xx = x0;

while(abs(x1*x1 - A)>=error && xx ~= x1)
    x1 = (x0*x0 + A)/(2*x0);
    if xx==x1
        break;
    else
    xx = x0;
    x0 = x1;
    end % to break towo value cycle
end

y = x1;
end
