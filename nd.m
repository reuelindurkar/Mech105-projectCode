function nd = days (mo, da, leap)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here



%disp('function is working')


%error handlers
if mo<0 || mo>12
    error('Unreal amount of months inputed');
elseif da<0 || mo>31
    error('Unreal amount of days inputed');
elseif leap<0 || leap>31
    error('invalid leapyear value inputed');
elseif nargin~=3
    error('wrong number of inputs');
end

% initialize
daysCounter = 0;

%meat and potatoes if not a leapyear
if leap == 0
    daysInMonth = [ 31 28 31 30 31 30 31 31 30 31 30 31];
    
    i = 1;
    while i <= mo
        y = daysInMonth(i);
        daysCounter = daysCounter+y;
        i = i+1;
    end
    daysCounter = daysCounter+da;
else
    %meat and potatoes when a leapyear
    daysInMonth = [ 31 29 31 30 31 30 31 31 30 31 30 31];
    i = 1;
    while i <= mo
        y = daysInMonth(i);
        daysCounter = daysCounter+y;
        i = i+1;
    end
    daysCounter = daysCounter+da;
end
disp(daysCounter)
end

