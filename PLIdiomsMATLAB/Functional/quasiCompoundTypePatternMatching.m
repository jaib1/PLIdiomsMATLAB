% a quasi (re: limited) example of using compound types and
% pattern-matching (on those types) in MATLAB using cell arrays and structs

% both cells and structures can be recursive (i.e. there can be meta-cells
% and meta-structures - though it's shown here only in cells)

c = {'hi, ', 1, false, {'hello, ', 2, true}};

s.str = 'bye'; s.num = 3; s.bool = false;

for i = 1:3
    switch class(c{i})
        % the concatenations in this pattern-matching will only work if
        % both elements have the same type
        case 'char'
            [c{i}, c{4}{i}, s.str]
        case 'double'
            [c{i}, c{4}{i}, s.num]
        case 'logical'
            [c{i}, c{4}{i}, s.bool]
    end
end