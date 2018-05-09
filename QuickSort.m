function y = QuickSort( x )

n = length(x);

if n<=1
    y = x;
else
    pivot = x(n);
    x(n) = [];  %%
    less = x( x<=pivot); %%
    greater = x( x> pivot);
    y = [QuickSort(less) pivot QuickSort(greater)];
end
    
end

