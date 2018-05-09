function row = PascalTriangle( n )

row = [1]; %% not []
for i = 1:n-1
    row = [1 row];
    for j = 2:i-1
        row(j) = row(j) + row(j+1);  %% not row(j-1)+row(j)
    end
end
    

end

