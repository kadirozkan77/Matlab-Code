R=4300;
C=0.314*10.^(-3);
L=1.7*10.^(-3);

f=linspace(10,1000);
w=2*pi*f;
X_C=1./(w*C);
X_L=w*L;
Z_total=sqrt((R.^2)+((X_L-X_C).^2));
A=R./Z_total;

plot(f,A,LineWidth=3);
xline(217,"--","Resonance Frequency");
xlabel("frequency (Hz)");
ylabel("Amplification");
title("Amplification respect to the Frequency");

