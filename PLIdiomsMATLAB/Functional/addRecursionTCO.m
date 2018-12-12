% example using recursion, a local helper function, local variables, 
% and an attempt at Tail-Call-Optimization (which MATLAB doesn't support)

% this function is equivalent to MATLAB's 'sum'. 
function z = addRecursionTCO(xs)
    function z2 = helper(xs2, acc)
        if isempty(xs2)
            z2 = acc;
        else
            z2 = helper(xs2(2:end), acc+xs2(1));
        end
    end
    z = helper(xs,0);
end

%ex:
% xs = [1 2 3];
% addRecursionTCO(xs)
