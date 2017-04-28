
clc;
clear;
close all;

%% Problem Definiton

problem.CostFunction = @(x) Sphere(x);  % Cost Function
problem.nVar = 10;      % Number of Unknown  Variables
problem.VarMin = -10;   % Lower Bound of variables
problem.VarMax =  10;   % Upper Bound of Variables

%% Parameters of PSO

% Constriction Coefficients
kappa = 1;
phi1 = 2.05;
phi2 = 2.05;
phi = phi1 + phi2;
chi = 2*kappa/abs(2-phi-sqrt(phi^2-4*phi));

params.MaxIt = 1000;        % Maximum Number of Iterations
params.nPop = 50;           % Population Size (Swarm Size)
params.w = chi;             
params.wdamp = 1;          
params.c1 = chi*phi1;      
params.c2 = chi*phi2;      
params.ShowIterInfo = true; % Flag for Showing Iteration Informatin

%% Calling PSO

out = PSO(problem, params);

BestSol = out.BestSol;
BestCosts = out.BestCosts;

%% Results

figure;
% plot(BestCosts, 'LineWidth', 2);
semilogy(BestCosts, 'LineWidth', 2);
xlabel('Iteration');
ylabel('Best Cost');
grid on;


