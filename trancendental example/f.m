function wnsq=f(g)
% this function uses the full system model f on the approximation g to evaluate the response wnsq
% g - parameter approximation
% x - control parameter. size of x will result in size of wnsq (no need for
% this example)
% wnsq - model output.
wnsq=10*sin(15*g)+8*g+3;