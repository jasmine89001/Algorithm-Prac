function s2 = refcn(s1)

% actually not correct

    s2 = '';
    for i = 1:length(s1)
        if ((s1(i)>= 'a' && s1(i)<='z') || (s1(i)>= 'A' && s1(i)<='Z'))
            if s1(i) == 'a' || s1(i) == 'e' || s1(i) == 'i' || s1(i) == 'o' || s1(i) == 'u' || ...
                    s1(i) == 'A' || s1(i) == 'E' || s1(i) == 'I' || s1(i) == 'O' || s1(i) == 'U'
                s2 = [s2 s1(i) ' '];
            end
        else
            s2 = [s2 s1(i)];
        end
    end
end