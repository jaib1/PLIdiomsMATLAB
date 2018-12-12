% example of MATLAB using lexical scope

x=1
f=@(y) x+y
x=2
y=3
f(x+y) % answer will be 6