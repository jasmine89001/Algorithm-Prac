function boolean = PalindromeNumber ( x )

boolean = 1;

digits = [];
while(floor(x) ~=0 )
    digits = [mod(x, 10) digits];
    x = floor(x/10);
end


n = length(digits);
i = 1;
while(boolean == 1 && i<=(n/2))
    if digits(i) ~= digits(n+1-i)
        boolean = 0;
    end
    i = i+1;
end

end
    
