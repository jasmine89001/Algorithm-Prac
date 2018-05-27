% Given a vector x, return a vector y of the unique values in x sorted by the number of occurrences in x.  
%   
% Ties are resolved by a sort from lowest to highest.  
%   
% So if  
%   
%  x = [1 2 2 2 3 3 7 7 93]  
%   
% then  
%   
%  y = [2 3 7 1 93]  
  
function y = popularity_1(x)
    cnt = containers.Map('KeyType','double','ValueType','int32');
    
    for i = 1:length(x)
        now = x(i);
        if isKey(cnt, now)
            cnt(now) = cnt(now) + 1;
        else
            cnt(now) = 1;
        end
    end
    
    keys = cnt.keys();
    values =  cnt.values;
    tmp = zeros(length(cnt), 2);
    for k = 1:length(cnt)  
        tmp(k, 1) = keys{k};  
        tmp(k, 2) = values{k};  
    end
    tmp = sortrows(tmp, -2)'; % -2->descengding and for second column
    y = tmp(1,:);
end