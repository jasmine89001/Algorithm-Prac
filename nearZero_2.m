function y = nearZero_2(x)

% Return the largest number that is adjacent to a zero
% Example:
% Input  x = [1 5 3 0 2 7 0 8 9 1 0]
% Output y is 8
% no image processing toolbox ---> conv

    zero_mask = (x == 0);    
    adjacent_to_zero_mask = true & conv(zero_mask, [1 0 1], 'same'); % not imdilate(x, [1 0 1])
    y = max(x(adjacent_to_zero_mask));
end