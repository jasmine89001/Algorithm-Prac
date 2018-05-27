function fh2 = iterate_fcn(fh, n)

fh2 = fh;
%     fh2 = fh (iterate_fcn (fh2 (fh, n-1), 1)); 
%     fh2 = fh(iterate_fcn ( fh, n-1 )) ;

for i = 2:n
    fh2 = @(x)fh(fh2(x));
end
       
end