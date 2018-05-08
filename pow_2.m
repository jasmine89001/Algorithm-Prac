function y = pow_2( x , n)


if n==0
    y = 1;
else
    if n==1
        y = x;
    else
        if mod(n,2)== 0
            y = pow_2(x, n/2) * pow_2(x, n/2);
        else
            y = pow_2(x, (n-1)/2) * pow_2(x, (n-1)/2) * x;
        end
    end
end
        

end

