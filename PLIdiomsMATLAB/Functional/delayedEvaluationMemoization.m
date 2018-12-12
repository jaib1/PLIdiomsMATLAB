% example of using delayed evaluation with memoization

% "memoization" is a fancy way of saying we will cache previously
% calculated answers using a look-up table - i.e. a memo - so that we don't
% have to re-calculate them again if we run the function with the same
% inputs.

% example: creating a generalized way to memoize functions which take
% scalar inputs

% *Note: this is just an example showing how memoization works. MATLAB has
% a built-in 'memoize' function which you should use (and which can handle
% non-scalar inputs)

% *Note 2: difference between MATLAB's 'persistent' variable declarations and
% memoization: 
% with nested memoization, each instance of our memoized function will 
% carry along its own workspace, whereas if we declared our memo to be 
% persistent and didn't use a nested function, we would only ever be able 
% to use a single instance of a memoized function

function f = delayedEvaluationMemoization(F)
%'F' = the function handle to memoize

% create our look-up table
memoIndxs = [];
memoVals = [];
f = @helper;
    function out = helper(in)
      % preallocate output
        out = zeros(size(in));  
        % find vals we've already computed
        [inMemoVals, memoIndx] = ismember(in, memoIndxs);
        % get output values for those not already in our memo
        out(~inMemoVals) = F(in(~inMemoVals));  
        % place new values in storage
        memoIndxs = [memoIndxs in(~inMemoVals(:).')]; %memoIndxs
        memoVals = [memoVals reshape(out(~inMemoVals),1,[])]; %memoVals for memoIndxs
        % fill in the rest of the output values and return
        out(inMemoVals) = memoVals(memoIndx(inMemoVals));  
    end
end

% %ex: 
%  f = delayedEvaluationMemoization(@sqrt);
%  f(4)

%ex: (using MATLAB's built-in)
%  f1 = memoize(@sort);
%  f2 = memoize(@mtimes);
%  a = rand(10000);
%  tic, f1(a); outTimePreMemof1 = toc
%  tic, f1(a); outTimePostMemof1 = toc
%  tic, f2(a*a); outTimePreMemof2 = toc
%  tic, f2(a*a); outTimePostMemof2 = toc
%  outTimePostMemof1 < outTimePreMemof1 && outTimePostMemof2 < outTimePreMemof2