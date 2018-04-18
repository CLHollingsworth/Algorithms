%% Homework 7 part 2
clear
clc
tic
n=1;
i=0;
while i<107
    n=n/1000;
    i=i+1;
end
if n~=0
n=n/100;
n=n/3;
end
toc