function result=sec_der(t,I)
R=4300;
C=0.314*10^(-3);
L=1.7*10^(-3);
V_peak=240;
f=50;
w=2*pi*f;
result=zeros(2,1);
result(1)=I(2);
result(2)=((V_peak*sin(w*t))-(I(2)*R)-(I(1)/C))/L;
end

V_peak=240;
f=50;
w=2*pi*f;

t_interval=linspace(0,0.1,1000);
I_0=[0;0]; 

[t,I]=ode45(@sec_der,t_interval,I_0);


yyaxis left
plot(t,I(:,2),"Color","r"); %Current value
ylabel("Current (Amper)");
yyaxis right
plot(t,V_peak*sin(w*t),Color="b");
ylabel("Voltage (Volt)");
legend("Current","Voltage");
title("Voltage and Current Values")
xlabel("Time (seconds)");