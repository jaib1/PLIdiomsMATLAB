% map a function onto each element of a list (in this case an array).
% the code below shows how the classic functional function "map" works, 
% but in practice in MATALB, one should use the built-in 'arrayfun',
% or just an operation on the array (*note 'cellfun' for cell arrays works similarly)

function newList = myMap(f, list) 
    if isempty(list)
        newList = list;
    else
      % run the function on the first element in our list, then call our 
      % 'myMap' function
        newList = [f(list(1)) myMap(f, list(2:end))];
    end
end

%ex:
% f = @(x) x+5; 
% list = [1 2 3];
% newList1 = myMap(f, list)
% newList2 = arrayfun(f, list) %MATLAB built-in
% isequal(newList1, newList2)