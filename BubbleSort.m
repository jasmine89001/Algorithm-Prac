function x = BubbleSort( x )
% time:O(n^2)
% space: O(1)

n = length(x);

for i = 1:n
    for j = 1:(n-i)
        if x(j) > x(j+1)
            temp = x(j+1);
            x(j+1) = x(j);
            x(j) = temp;
        end
    end
end


end

