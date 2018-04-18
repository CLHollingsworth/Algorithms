function da =Homework_4(mo, da, leap)
%Day calculator. This function calculates the amount of days that have
%elapsed so far this year
%   It does so by having the user inout the month, day and also if it is a
%   leap year or not.
%where
%mo=the month(1-12)
%da=the day(1-31)
%leap=(0 for non-leap year and 1 for leap year)
%output-the number of days elapsed
for m=1:mo-1 %month number
    switch m
        case {1, 3, 5, 7, 8, 10, 12}
            da=da+31;
        case {4, 6, 9, 11}
            da=da+30;
        case 2
            da=da+28;
    end
end
if leap==1 && mo>2
    da=da+1;
end
end