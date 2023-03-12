function dzdt =SYS(t,z,k1,k3,c1)
% dzdt=[z(2);-(k*z(1)+c*z(2))];
dzdt=[z(2);-(k1*z(1)+k3*z(1).^3+c1*z(2))];
% x=z(1);
% y=z(2);
% dzdt=[x^2*y-x^5;-y];
