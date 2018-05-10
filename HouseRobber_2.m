function rob = HouseRobber_2( nums )


% Dynamic programming, coverted from HouseRobber_1
% space: O(1)

n = length(nums);

prevNo= 0;
prevYes = 0;

for i = 1:n
    temp = prevNo;
    prevNo = max( prevNo, prevYes);
    prevYes = temp + nums(i);
end
 
rob = max( prevNo, prevYes);

end

