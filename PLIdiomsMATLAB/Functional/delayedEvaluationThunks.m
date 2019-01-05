% example of using delayed evaluation with thunks

% A "thunk" is the encapsulation of an operation in a zero-argument
% function to delay that operation's evaluation. example: let's say, 
% depending on some condition (based on 'x') we need to return either an 
% evaluation of 'a*a' or 'b*b'. below is the standard way to approach this:

a = rand(10000);
b = rand(10000);

tic;

c = a*a;
d = b*b;

x = 0;

if x
  out = c;
else
  out = d;
end

timeWithoutThunking = toc

% a better way to do it - use thunking. We don't actually need to evaluate
% both 'c' & 'd' because we won't need them both (we only will ever return
% one of them from the conditional), so do the evaluation in the conditional
% itself, by evaluating a "thunked" anonymous function. This is delayed 
% evaluation

tic;

% use anonymous functions to create "thunks" (we're not actually doing the
% multiplication here)
fC = @()a*a;
fD = @()b*b;

x = 0;

if x
  out = fC(); %evaluation of a*a ONLY within the conditional
else
  out = fD(); %evaluation of b*b ONLY within the conditional
end

timeWithThunking = toc

timeWithThunking < timeWithoutThunking
