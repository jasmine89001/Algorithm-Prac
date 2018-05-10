function counts = CountPrimes( n )

% ??2?3?5?7???
% time: O(n*loglogn)

isPrime = ones(1, n);
isPrime(1) = 0;

i = 2;
while(i <= sqrt(n))
    if ~isPrime(i)
        continue;
    else
        j = i*i;
        while(j <= n)
            isPrime(j) = 0;            
            j = j+i;
        end
    end 
    i = i + 1;
end

counts = sum(isPrime);

end

