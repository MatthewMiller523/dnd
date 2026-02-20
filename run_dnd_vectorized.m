function results = run_dnd_vectorized(N)

%% ===== STANDARD ROLLS =====
d8  = randi(8 , N,1);
d10 = randi(10, N,1);
d6  = randi(6 , N,2);

gwm_d6 = apply_gwm(d6);

%% ===== CRITS =====
c_d8  = randi(8 , N,2);
c_d10 = randi(10, N,2);
c_d6  = randi(6 , N,4);

c_gwm_d6 = apply_gwm(c_d6);

%% ===== ADVANTAGE (two roll choices) =====
d8_adv  = randi(8 , N,2,1);
d10_adv = randi(10, N,2,1);
d6_adv  = randi(6 , N,2,2);

gwm_d6_adv = apply_gwm(d6_adv);

c_d8_adv  = randi(8 , N,2,2);
c_d10_adv = randi(10, N,2,2);
c_d6_adv  = randi(6 , N,2,4);

c_gwm_d6_adv = apply_gwm(c_d6_adv);

%% ===== STANDARD AVERAGES =====
results.d8_avg     = mean(d8);
results.d10_avg    = mean(d10);
results.d6_avg     = mean(sum(d6,2));
results.gwm_d6_avg = mean(sum(gwm_d6,2));

%% ===== CRIT AVERAGES =====
results.c_d8_avg      = mean(sum(c_d8,2));
results.c_d10_avg     = mean(sum(c_d10,2));
results.c_d6_avg      = mean(sum(c_d6,2));
results.c_gwm_d6_avg  = mean(sum(c_gwm_d6,2));

%% ===== ADVANTAGE =====
results.d8_adv_avg      = mean(best_advantage(d8_adv));
results.d10_adv_avg     = mean(best_advantage(d10_adv));
results.d6_adv_avg      = mean(best_advantage(d6_adv));
results.gwm_d6_adv_avg  = mean(best_advantage(gwm_d6_adv));

results.c_d8_adv_avg      = mean(best_advantage(c_d8_adv));
results.c_d10_adv_avg     = mean(best_advantage(c_d10_adv));
results.c_d6_adv_avg      = mean(best_advantage(c_d6_adv));
results.c_gwm_d6_adv_avg  = mean(best_advantage(c_gwm_d6_adv));

end