%% Initialize method

% Load measurement vector
% load('wmeassq.mat','wmeassq','x');
wmeassq=0;
% Initialize approximation vector
w_tilde=wmeassq;

% Number of iterations
iters=20;

% Step size
beta=0.02;
% approximation g vector
g=zeros(iters,1);
% error vector vector
err=zeros(iters,1);

%% iterations
for kk=1:iters

%% Step 1: approximate g using the simplified inverse:
g(kk)=fsinv(w_tilde);

%% Step 2: approximate wsqn using the full model:
wnsq=f(g(kk));

%% Step 3: update simplifed model using error:
err(kk)=wmeassq-wnsq;
w_tilde=w_tilde+beta*err(kk);
subplot(2,1,1)
plot(err(1:kk))
xlabel('iteration')
ylabel('error')
subplot(2,1,2)
plot(g(1:kk))
xlabel('iteration')
ylabel('g')
shg
end
