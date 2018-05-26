function c = collatz_2(n)
%Solution 21: Return the 3n+1 sequence
%trying Recursive method
%15% faster than method_1

if  n == 1
    c = 1;
elseif mod(n,2) == 0
    c = [n collatz_2(n/2)];
else
    c = [n collatz_2(3*n+1)];
end

end