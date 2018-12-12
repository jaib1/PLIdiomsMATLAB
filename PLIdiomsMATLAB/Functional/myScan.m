% the classic FP function 'scan', which returns a running "accumulator"
% ('acc') for each value in the input array ('list') operated on by a
% function ('f')

function newList = myScan(f, list, acc)
  
  function acc = helper(f, list, acc)
    if isempty(list)
      return;
    else
      helperAcc = f(list(1));
      acc = [acc acc(end)+helperAcc];
      acc = helper(f, list(2:end), acc);
      return;
    end
  end

  newList = helper(f, list, acc);

end