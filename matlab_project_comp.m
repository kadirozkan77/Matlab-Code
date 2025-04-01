function result=sec_der(t,I)
R=4300;
C=0.314;
L=1.7;
V_peak=240;
f=50;
w=2*pi*f;
result=zeros(2,1);
result(1)=I(2);
result(2)=((V_peak*sin(w*t))-(I(2)*R)-(I(1)/C))/L;
end

t_interval=linspace(0,4,100);
I_0=[0,0]; 

[t,I]=ode45(@sec_der,t_interval,I_0);

plot(t,I(:,2),"Color","b"); % Derivative of current
legend("Derivative of current");

plot(t,I(:,1),"Color","r"); %Current value
legend("Current");