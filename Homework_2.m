%% Classifying each variable
time=0;
initial=10;
R=60;
ind=9;
C=0.00005;
t=0;
e=exp(1);
x=1;
y=1;
%% Starting the while loop to stop when the time is reached and the charge
%is displayed along with the corresponding time.
while time<=0.8
    time=time+0.1;
    charge1=initial*e^(-R*time/(2*ind))*cos(sqrt(((1/ind*C)-((R/2*ind)^2))*time));
    plot(time,charge1, 'rd');
end
%% Problem 2
t2=[10,20,30,40,50,60,];
cp=[3.4,2.6,1.6,1.3,1.0,0.5];
cp2=4.84*exp(-0.034*t2);
plot(cp2, 'g--') 
hold on
xlabel('Time')
ylabel('Concentration')
title('Photodegradation of Aqueous Bromine')
plot(t2,cp,'rd') 
hold off