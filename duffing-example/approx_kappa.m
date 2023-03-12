function e=approx_kappa(X,w,x)
kappa=X;

e=w.^2-(1+3/4*kappa*abs(x).^2);
% plot(w.^2,x)
% hold on
% plot((1+3/4*kappa*abs(x).^2),x)
% hold off
% shg
