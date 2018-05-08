function y = sqrt_1( A , error )
% binary search
% The Zero Theorem (lingdian dingli)

a = 0;
b = A + 1/4;
m = (a+b)/2;

% sometimes dead cycle wen m==a or m==b

while(a ~= b && abs(m*m-A)>=error)
    m = (a+b)/2;
    if (a*a-A) * (m*m-A) < 0
        b = m; 
    else
        a = m;
    end
end

y = m; 
end

