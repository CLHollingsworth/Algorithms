%% Homework 8
% This uses a third order Taylor series to predict a point using a known
% point and a given equation. Along with each point the true percent
% relative error is calculated.
clc
clear
syms s(t)
x=1; %point used for approximation
yexp(t)=25*x^3+(-6*x^2)+7*x-88;%Equation to be approximated
s(t)= taylor(yexp,t);
%I have not been able to figure out how to get the taylor function to work,
%I tried to replicate the examples online and it never laid out like i
%needed it to. This is the best guess of mine about what it should look
%like.
