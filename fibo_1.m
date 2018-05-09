function y = fibo_1( n )

% recursive method
% time: O(2^n)
if n==1 || n==2
    y = 1;
else
    y = fibo_1(n-1) + fibo_1(n-2);
end        

end

