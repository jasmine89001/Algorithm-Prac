function y= fibo_2( n )

% not recursive
% time: O(n)?
x = ones(n, 1);
if n~=1 && n~=2
    for i = 3:n
        x(i) = x(i-1) + x(i-2);
    end
end   

y = x(n);
end

