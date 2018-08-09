E = 0.05;
Eg =input('Enter the value of Energy');
Na =10e14;
Nd =10e16;
Nc =2.8e19;
Nv =1e19;
t = 0:47:1800;
a =(((Na*Nd).^0.5)/((300).^1.5)); 
b =t.^1.5;
c =1.*exp(-(E.*300)./(0.052.*t));
n0 = a.*b.*c;
d =(((Nc*Nv).^0.5)/((300).^1.5)); 
e=t.^1.5;
f=1.*exp(-(Eg.*300)./(0.026.*t));
ni=d.*e.*f;
N=ni+n0;
semilogy(t,N);
xlabel('Temperature in kelvin--->');
ylabel('Majority Carrier concentration --->');
title('Extrinsic carrier concentration vs Temperature grapjh for Si');
hold on;
grid on;
