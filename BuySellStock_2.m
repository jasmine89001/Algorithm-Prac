function profit = BuySellStock_2( prices )

% time ineffecient method -> find sofarMin

profit = 0;
n = length(prices);
sofarMin = prices(1);

for i = 2:n
    if prices(i) < sofarMin
        sofarMin = prices(i);
    else
        profit = max(profit, prices(i) - sofarMin);
    end
end

end

