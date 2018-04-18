%% Homework 3
%Identify variables
tic
clc
d1=25; %diameter of cylinder
d2=46; %diameter of cone
r=12.5; %bottom radius of cone
R=23; %top radius of cone
h1=19; %height of cylinder
h2=14; %height of cone
format short g
%Start if statement
h=input('What is the height of the float in meters?'); %Ask for height
if h>33 
    disp('Hopefully there is a second tank, cause this one is overflowing or the float is misreading.')
elseif h==0
    disp('You got no water fool.')
elseif h<0
    disp('Come on man... really?')
elseif h==33
    v2=((pi*(h-19))/3)*(R^2+R*r+r^2); %volume of the cone
    v1=(h-14)*pi*r^2; %volume of cylinder
    vf=v1+v2; %final volume of water
    disp('This tank is full to the top')
    disp(vf)
elseif h<33 && h>19
    v2=((pi*(h-19))/3)*(R^2+R*r+r^2); %volume of the cone
    v1=(h-14)*pi*r^2; %volume of cylinder
    vf=v1+v2; %final volume of water
    disp('Getting close to full, be careful.')
    disp(vf)
elseif h<19 && h>0
 v1=h*pi*r^2; %volume of cylinder
 disp(v1)
 disp('This tank can hold quite a bit more, no worries.')
else 
    disp('Error, enter number')
end
toc



