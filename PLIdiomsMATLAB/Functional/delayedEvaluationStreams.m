% example of using delayed evaluation with streams

% A "stream" is an ostensibly infinite sequence of values, created from
% thunking. The benefit of using a stream is that it can produce new values
% forever without 1)needing to know beforehand when it should terminate and
% therefore 2) allowing for memory and computation optimization

% example: creating a stream of natural numbers (1,2,3...infinity)

% steps 1) create a stream, 2) evaluate a stream up to a certain (finite)
% number of the stream, which will return that element in the stream

% does MATLAB provide any support for creating streams? couldn't figure out
% a way to recursively incldue the anonymized function in its
% definition
