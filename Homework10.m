%% Solving mole fraction of water evaporated
pt=3;%variable values given
K=0.05;
% K=x/(1-x)*sqrt(2pt/2+x) initial function given
f=@(x) ((x./(1-x)).*sqrt((2.*pt)./(2+x)))-K; %new function to find x that satisfies
fplot(f,[-10,10]); % plot to help find root that works
refline(0,0);
j=fzero(f,0);
formatSpec="The mole fraction of water that dissipates into hydrogen gas and oxygen gas at 3atm at an equilibrium constant of 0.05 is %d";
str=sprintf(formatSpec,j);
disp(str)