clc;
clear;
close all;

%% Problem Definiton

problem.CostFunction = @(x) ackley(x);  % Cost Function
problem.nVar = 5;       % Number of Unknown Variables
problem.VarMin =  -10;  % Lower Bound of  Variables
problem.VarMax =  10;   % Upper Bound of  Variables

%% Parameters of PSO

params.MaxIt = 500;        % Maximum Number of Iterations
params.nPop = 50;           % Population Size (Swarm Size)
params.w = 1;               
params.wdamp = 0.99;        
params.c1 = 2;              
params.c2 = 2;              
params.ShowIterInfo = true; 

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


