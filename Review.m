%% Review Problem part 1
% This equation asks for the temperature and relative humidity and then
% returns the heat index that is felt outisde.
clc
clear
T=input('What is the temperature outside ?(F)'); %define T from user
R=input('What is the relative humidity in integer percentage?');% define R from user
tic
HI=-42.379+2.04901523*T+10.14333127*R-0.224755*T*R-...
    (6.83783*10^-3*T^2)-(5.481717*10^-2*R^2)+(1.22874*10^-3*T^2*R)+(8.5282*10^-4*T*R^2)-...
    (1.99*10^-6*T^2*R^2); %equation that determines heat index
disp(HI);
toc
%% Review Problem part 2
% This program is given parameters about a crack and the material and
% returns the stress intensity factor.
clear
clc
a=input('What is the crack length?');
b=input('What is the width of the beam?');
t=input('What is the thickness of the beam?');
M=('What is the force applied to the beam?');
tic
sig=(6.*M)/t.*b.^2; %determines sigma to be used in later equations
mew=a./b; %finds the value of mew
btail=(pi.*mew./2);% finds the value of a funky looking Greek letter
C=sqrt(tan(btail)./btail).*(0.923+(.199.*(1-sin(btail)).^2)/cos(btail)); %equates the value of C
k=C.*sig.*sqrt(pi.*a); %determines the stress intensity factor
formatSpec="The stress intensity factor for a beam that is %d m wide and %d m thick with and edge crack of %d m and an apllied moment of %d N-m is %d pa-sqrt(m).";
str=sprintf(formatSpec, b, t, a, M, k);
format short
disp(str)
toc





