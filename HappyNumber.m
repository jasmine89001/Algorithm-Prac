function isHappy = HappyNumber( n )

% ??not happy number????
% hashset ---> Floyd Cycle detection algorithm (like two pointer)

slow = digitSquareSum(n);
fast = digitSquareSum(n);
fast = digitSquareSum(fast);

while(slow ~= fast)
    slow = digitSquareSum(slow);
    fast = digitSquareSum(fast);
    fast = digitSquareSum(fast);
end

if slow == 1
    isHappy = 1;
else
    isHappy = 0;
end

    

    function sum = digitSquareSum( n )
        sum = 0;
        while(n)
            tmp = mod(n, 10);
            sum = sum + tmp*tmp;
            n = floor(n/10);
        end
    end

end

