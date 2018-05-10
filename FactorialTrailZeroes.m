function counts = FactorialTrailZeroes( n )

% count 2 factors and 5 facots
% also care about 5, 5*5, 5*5*5, ...

counts = 0;

i = 5;
while(floor(n/i) ~= 0)
    counts = counts + floor(n/i);
    i =  i*5;
end

