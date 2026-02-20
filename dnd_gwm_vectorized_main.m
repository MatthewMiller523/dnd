%% dnd_gwm_vectorized_main.m
clear; clc;

N = 1e6;

results = run_dnd_vectorized(N);

T = struct2table(results,'AsArray',true);

disp(T)

writetable(T,'dnd_gwm_results_vectorized.csv');
fprintf('Saved: dnd_gwm_results_vectorized.csv\n');