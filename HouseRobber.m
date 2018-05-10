function rob = HouseRobber( nums )


% Dynamic programming
% space: O(n)

% dp(2,i) means we rob the current house and dp(1,i) means we don't,
% so it is easy to convert this to O(1) space  later
n = length(nums);
dp = zeros(2, n+1);

for i = 2:n+1
    dp(1, i) = max( dp(1, i-1), dp(2, i-1));
    dp(2, i) = dp(1, i-1) + nums(i-1);
end

rob = max( dp(1, n+1), dp(2, n+1));

end

