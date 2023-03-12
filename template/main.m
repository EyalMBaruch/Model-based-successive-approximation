%% Initialize method

% Load measurement vector
load('wmeassq.mat','wmeassq','x');

% Initialize approximation vector
w_tilde=wmeassq;

% Number of iterations
iters=50;

% Step size
beta=0.01;

%% iterations
for kk=1:iters

%% Step 1: approximate g using the simplified inverse:
g=fsinv(w_tilde,x);

%% Step 2: approximate wsqn using the full model:
wnsq=f(g,x);

%% Step 3: update simplifed model using error:
err=wmeassq-wnsq;
w_tilde=w_tilde+beta*err;
end
