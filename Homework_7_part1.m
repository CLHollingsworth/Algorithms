%% Homework 7 part 1
%Steps to find machine epsilon
clear
clc
tic
ep=1;%Set epsilon equal to one
    if ep+1<=1
        ep=ep*2;
    else
        ep=ep/2;
    end
toc