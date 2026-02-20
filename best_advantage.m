function out = best_advantage(arr)

% sum dice in each roll option
s = sum(arr,3);     % N x 2

% choose best roll per trial
out = max(s,[],2);  % N x 1

end