% example of using a higher-order function and anonymous funtions 
% to return two functions as outputs
function [f, f2] = anonFuncReturner(u)
    f = @(y,x) y * x.^u;
    f2 = inline('a^2+b^2*u', 'a', 'b');
end

%ex:
% u = 3;
% anonFuncReturner(u)

% example of unnecessary function wrapping (commented out)

% length2 = @(x) length(x);
% we could've just used MATLAB's 'length' instead of creating this function
% isequal(length2(x), length(x))

% only do something like this if you need to overload a MATLAB built-in
% function for a type that won't work with MATLAB's built-in -
% otherwise, just use the built-in!