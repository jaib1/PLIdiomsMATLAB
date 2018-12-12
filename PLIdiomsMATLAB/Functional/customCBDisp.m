% example where client can select a specific input to customize a callback
% (in this case, the string of a key)

function customCBDisp(key)
    h = figure;
    disp('Press a key over current figure')
    %user should now press key over figure
    waitforbuttonpress;
    key2 = get(h, 'CurrentKey');
    if strcmp(key2,key)
        disp(['You pressed "', key, '"']);
    else
        disp(['You pressed "', key2, '" which was not "', key, '" (the key you specified)']);
    end
end

%ex:
% key = 'a';
% customCBDisp(key)