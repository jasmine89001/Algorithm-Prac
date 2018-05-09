function profit = BuySellStock_1( prices )

% Brute Force

profit = 0;
n = length(prices);

for i = 1:n
    for j = i+1:n
        if (prices(j) - prices(i) > profit)
            profit = prices(j) - prices(i);
        end
    end
end


end

