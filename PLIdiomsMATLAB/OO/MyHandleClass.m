%%% MATLAB class (handle) where two copies of a class have the same reference
%%% (mutable reference)

classdef MyHandleClass < handle
  
  properties
    MyVal = 1;
    MyString = 'str';
    State = false;
  end
  
  
  methods
    
    function plus(obj, x)
      obj.myVal = obj.myVal + x;
    end
    
    function appendString(obj, x)
      obj.myString = strcat(obj.myString, " ", x);
    end
    
    function uhOhState(obj, new)
      if new ~= obj.State
        notify(obj, 'uhOh')
      end
      %            use this listener outside the class def
      %            lh = listener(obj, 'uhOh', @myHandleClass.dispUhOh);
    end
    
  end
  
  %note, in this particular case, "dispUhOh" doesn't have to be a static (aka class) method
  methods (Static = true)
    
    %input args necessary: 1) object of the class, 2) object that triggers the event
    function dispUhOh(~, ~)
      disp("UH-OH")
    end
    
  end
  
  
  events
    
    uhOh
    %        Update
    
  end
  
  
end