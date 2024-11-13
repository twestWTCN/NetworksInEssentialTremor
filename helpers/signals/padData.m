function ftdata = padData(ftdata,dSize,timer,padval)
X = padarray(ftdata.trial{1},[0 dSize],inf,'pre');
if isnumeric(padval)
    X(X==inf) = padval;
elseif strcmp(padval,'randn')
    X(X==inf) = randn;
end
ftdata.trial{1} = X;
% Construct new time vector
%     timer2 = linspace(0,size(ftdata.trial{1},2)/ftdata.fsample,size(ftdata.trial{1},2));
ftdata.time = timer; %{timer2};
ftdata.sampleinfo = [0 numel(ftdata.time{1})];