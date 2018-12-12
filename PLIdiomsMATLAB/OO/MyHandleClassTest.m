classdef MyHandleClassTest < matlab.unittest.TestCase
  
  % we'll later set this property as an object instantiation of the class 
  % we want to test (MyHandleClass) as a property of this TestClass
  
  %ex:
  % run(MyHandleClassTest)
  properties
    MyHandleClassInstance
  end
  
  methods (TestClassSetup)
    
    % could also use 'SharedTestFixtures' as class property to set path and
    % auto-teardown
    function addClassToPath(testCase) 
      % get our current path for restoring after teardown
      p = path;
      % add a teardown for pre-test path:
      % (first arg is fixture instance (i.e. environment - when to
      % teardown (when this is out of scope)))
      % (second arg is tearDownFcn (i.e. what to execute during teardown))
      testCase.addTeardown(@path,p); 
      
      addpath(genpath('\\zserver.cortexlab.net\code\PLIdiomsMATLAB'));
      
      % commented out so that we can test above (b/c this commented path
      % should always work since it contains both Class to be tested and TestClass:      
%       addpath(genpath('C:\Users\Jai\Google Drive\UCL Cortex Lab\PLIdiomsMATLAB\'));
    end
    
  end
  
  % these methods run before running each test
  methods (TestMethodSetup)
    
    function addClass(testCase)
      testCase.MyHandleClassInstance = MyHandleClass;
    end
      
  end
  
  % the unit tests
  methods (Test)
    
    function testPlus(testCase)
      expPlus = 2;
      actPlus = testCase.MyHandleClassInstance.MyVal + 1;
      testCase.verifyEqual(expPlus, actPlus)
    end
    
  end
  
  
end