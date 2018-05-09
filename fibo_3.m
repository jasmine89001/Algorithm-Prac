function y = fibo_3( n )

% not recursive, no array
% time: O(n)?

if n==1 || n==2
    y = 1;
else
    a = 1; 
    b = 1;
    for i = 3:1:n
        y = a + b;
        a = b;
        b = y;
    end
end

end

