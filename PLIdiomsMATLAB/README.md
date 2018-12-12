This repository contains examples of using classic functional and object-oriented programming language idioms in MATLAB. Most of the files contained in the "Functional" folder are very short (~10-20 lines of code) and serve mainly to illustrate how MATLAB can do some operations in a classically functional way. For some of these examples, MATLAB has built-ins which are more much more efficient than the functions I've created (which I've done my best to note within the files themselves). In practice, a programming language's built-ins should virtually always be used instead of user-created output-equivalent code. 

To understand the implementation of these functions, it may be helpful to use MATLAB's debugger to step through a function call as it's running. Note that almost all of these concepts are decades-old, and none have I come up with myself (only the implementation). If you'd like more information on these concepts, a web search will usually work best, but I can also try and point you in the right direction. Please feel free to fork, add/edit, and pull request, and create comments/issues within github!

Jai Bhagat - j.bhagat@ucl.ac.uk  

## File Description:

### Functional:

- 'addRecursionTCO' is an example of how MATLAB can use recursion and local helper functions, and shows how MATLAB fails to implement tail-call optimization.

- 'anonFuncReturner' is a very simple example of MATLAB using higher-order and anonymous functions.

- 'anonymousNesting' is a very simple example of MATLAB using nested higher-order and anonymous functions.

- 'customCBDisp' is a very simple example of creating a custom callback in MATLAB.

- 'delayedEvaluationMemoization' gives examples of memoizing a function and using that memo to reduce computation time.

- 'delayedEvaluationStreams' is a file that currently has no code, because I could not figure out/am not sure if it's possible to recursively include an anonymized function in its definition. (maybe there's another way to create a stream in MATLAB?)

- 'delayedEvaluationThunks' serves as an introduction to delayed evaluation in MATLAB by using zero-argument anonymous functions to reduce computation time.

- 'funcCompPartApp' is short for "function composition resulting in partial application", and shows how to implement partial application in MATLAB.

- 'lexicalScope' is a very simple, short, but insightful example of MATLAB using lexical scope during evaluation.

- 'mapMultipleFuncs' is an example of how MATLAB can map multiple functions to a single input and return the outputs of all those mapped functions via anonymous functions and cell arrays.

- 'mutualRecursion' is an  example of how MATLAB can use two functions which can call each other recursively during an operation.

- 'myMap' is an example of how MATLAB maps a function to an input (i.e. how the built-in 'arrayfun' and 'cellfun' functions work)

- 'myScan' is an example of how MATLAB can implement the classical functional programming function 'scan'.

### OO:

- 'MyHandleClass' is an example of a simple MATLAB handle class that displays various properties (aka attributes in other language) and methods attributes, and events/listeners.

- 'MyHandleClassTest' is a simple matlab.unittest.TestCase class that gives an example of running a unit test on a class.

- 'MyValueClass' is a simple MATLAB value class.

## TODO: 
- add more code and comments for the object-oriented 'OO' folder.
- add macros example for 'Functional' folder? 
