% example of using nesting with higher order functions

% returns a function 'p' which takes 3 inputs 'a', 'b', 'c' to make a parabola
function p = anonymousNesting(a,b,c)
    p = @parabola;

    function y = parabola(x)
        y = a*x.^2 + b*x + c;
    end
end

%ex:
% a = 3; b = 2; c = 1;
% p = anonymousNesting(a,b,c)