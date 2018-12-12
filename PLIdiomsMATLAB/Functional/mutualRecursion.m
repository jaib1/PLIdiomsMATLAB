% examples of using two functions which can call each other recursively
% (mutual recursion). 

% The output of both examples below could be achieved without using mutual 
% recursion (it could be done with a single function), but this is just an 
% example of how mutual recursion could be implemented in MATLAB. 

% example 1: using two functions which either 1) call each other or
% 2) return the first element of the input (a cell array) depending on the 
% class of that first element of the input 

function out = mutualRecursion(x)

  function out = func1(f,x)
    switch class(cell2mat(x(1)))
      case 'double'
        out = f(x(2:end));
      otherwise
        out = x(1);
        return
    end   
  end

  function out = func2(x)
    switch class(cell2mat(x(1)))
      case 'char'
        out = func1(@(x) func2(x), x(2:end));
      otherwise
        out = x(1);
        return
    end
  end

  out = func2(x);

end

%ex:
% x = {'hi', 1, 'hello', 'bye'};
% mutualRecursion(x)


% example 2: finite state machine: using two functions 'func1', 'func2', 
% to represent states, where we return true if we alternate between states
% (current array element compared to next element array) of state equal to 1
% and any other state, AND our last state equals 1. We return false otherwise.

% function out = mutualRecursion(x)
% 
%   function out = func1(x)
%     if isempty(x)
%       out = true;
%     elseif x(1) ~= 1
%         out = func2(x(2:end));
%     else
%       out = true;
%     end
%   end
% 
%   function out = func2(x)
%     if isempty(x)
%       out = false;
%     elseif x(1) == 1
%       out = func1(x(2:end));
%     else
%       out = false;
%     end
%   end
% 
% out = func2(x);
% 
% end

%ex: 
% x = [1 2 1 3 1 1];
% mutualRecursion(x)
