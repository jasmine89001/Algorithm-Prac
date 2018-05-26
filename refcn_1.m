function s2 = refcn_1(s1)

% Convert string into character array
arr = char(s1);

% Declare a string variable with consonants
cn = 'bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWYZ';

% Use ismember() to remove consonants
s2 =  arr( ~ismember( arr, cn ));

end