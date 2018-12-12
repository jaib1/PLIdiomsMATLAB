% MATLAB class (value) where two copies of a class have two separate references
% (immutable reference)

classdef MyValueClass
    
    properties
        myVal
        myString
    end
   
    methods
        
        function obj = plus(obj, x)
            obj.myVal = obj.myVal + x;
        end
        
        function obj = appendString(obj, x)
            obj.myString = strcat(obj.myString, " ", x);
        end
        
    end
    
end