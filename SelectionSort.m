function x = SelectionSort( x )

% time:O(n^2)
% space: O(1)

n = length(x);

for i = 1:n
    small = x(i);
    idx = i; %%
    for j = i+1:n
        if x(j) < small
            small = x(j);
            idx = j; %%
        end
    end
    x(idx) = x(i); %%
    x(i) = small;
end

end

