function result=sec_der_2_over_damped(t,I)
R_C=100;
C=0.314*10^(-3);
L=1.7*10^(-3);
V_peak=240;
f=50;
w=2*pi*f;
result=zeros(2,1);
result(1)=I(2);
result(2)=((V_peak*sin(w*t))-(I(2)*R_C)-(I(1)/C))/L;
end

t_interval=linspace(0,0.1,100000);
I_0=[0;0]; 
v_peak=240;
f=50;
w=2*pi*f;

[t,I]=ode45(@sec_der_2_over_damped,t_interval,I_0);
plot(t,I(:,2),Color="r");
title("Overdamped");
xlabel("Time (seconds)");
ylabel("Current (Amper)");