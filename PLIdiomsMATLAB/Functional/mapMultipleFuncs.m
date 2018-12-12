% example using MATLAB's built-in 'cellfun' to map multiple functions to an
% array (and also examples of other classic FP functions like 'filter', 
% 'scan' and 'fold') 

myMapMult = @(list, funcs) cellfun(@(f) f(list), funcs, 'UniformOutput', false); 

%ex
% list = [1 2 3];
% funcs{1} = @(x) x+5;
% funcs{2} = @(x) [min(x), max(x)];
% funcs{3} = @(x) sprintf('%d,', x);
% funcs{4} = @(x) mod(x,2); % example of using a 'filter'-like function
% funcs{5} = @(x) sum(x); % example of using a 'fold'-like function
% funcs{6} = @(x) myScan(@(y) y+5, x, 0); % example of using a 'scan'-like function
% myMapMult(list, funcs)