function X=fsinv(w_tilde,t)
% this function uses the inverse of the simplfied model fs to evaluate g 
% w_tilde - perturbed measurments.
% x - control parameter. size of x will result in size of g
% g - parameter approximation
opt=optimset('lsqnonlin') ;
    opt.TolFun=1e-12;
    opt.TolX=1e-12;
    opt.Display='none';
x = hilbert(w_tilde);
w=gradient(phase(x),t);
w=w(floor(end/4):floor(3*end/4));
x=x(floor(end/4):floor(3*end/4));
X=lsqnonlin(@(XX) approx_kappa(XX,w,x),[1],[],[],opt);
