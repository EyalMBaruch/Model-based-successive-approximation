%% Initialize method

% Load measurement vector
% load('wmeassq.mat','wmeassq','x');
t=0:0.05:1000;
IC=[10;10];
k1=1;
k3=0.1;
c1=1e-2;
opts = odeset('RelTol',1e-9,'AbsTol',1e-9);
[t,h] = ode45(@(t,z) SYS(t,z,k1,k3,c1),t,IC,opts);
wmeassq=h(:,1);
% Initialize approximation vector
w_tilde=wmeassq;

% Number of iterations
iters=20;

% Step size
beta=0.004;
Xvec=[];
%% iterations
for kk=1:iters

%% Step 1: approximate g using the simplified inverse:
X=fsinv(w_tilde,t);

%% Step 2: approximate wsqn using the full model:
wnsq=f(X,t);

%% Step 3: update simplifed model using error:
err=wmeassq-wnsq;
w_tilde=w_tilde+beta*err;
% plot(t,err)
% shg

Xvec(kk,:)=X;
subplot(2,1,1)
plot(Xvec)
shg
end
