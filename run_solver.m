load("/your_filepath/p_obs.mat")    % --- Observational Probabilities ---
n = 5;    % --- Number of alternatives ---

[lambda_opt, V, rankings, choice_sets, error_val] = solve_rum_projection(p_obs, n);
