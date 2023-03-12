function wnsq=f(X,t)
% this function uses the full system model f on the approximation g to evaluate the response wnsq
% g - parameter approximation
% x - control parameter. size of x will result in size of wnsq
% wnsq - model output.
opts = odeset('RelTol',1e-9,'AbsTol',1e-9);
[t,h] = ode45(@(t,z) SYS(t,z,1,X,1e-2),t,[10;10],opts);
wnsq=h(:,1);