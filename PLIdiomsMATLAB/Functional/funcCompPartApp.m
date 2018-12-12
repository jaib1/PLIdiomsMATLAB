% example of function composition resulting in partial application using
% anonymous functions

a=1; b=2; c=3;

fMeta2IsSorted = @(x) @(y) @(z) z>=y && y>=x;

fMetaIsSorted = fMeta2IsSorted(a); %first instance of partial application

fIsSorted = fMetaIsSorted(b); %second instance of partial application

IsSorted = fIsSorted(c); % will return a boolean - true if c>=b>=a