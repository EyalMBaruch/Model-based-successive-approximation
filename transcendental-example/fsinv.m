function g=fsinv(w_tilde)
% this function uses the inverse of the simplfied model fs to evaluate g 
% w_tilde - perturbed measurments.
% x - control parameter. size of x will result in size of g
% g - parameter approximation

%for this example:
%simplified model - fs(g)=6*g+5=w_tilde; 
%inverse:
g=(w_tilde-5)/6;