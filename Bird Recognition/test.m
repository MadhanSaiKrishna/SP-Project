% Sample signals
x = [1, 2, 3, 4, 5];
y = [2, 3, 4];

% Compute cross-correlation
[r, lags] = xcorr(x, y);

% Find maximum correlation and its corresponding lag
[max_corr, index] = max(r);
lag_at_max_corr = lags(index);

% Display results
disp(['Maximum Correlation: ', num2str(max_corr)]);
disp(['Lag at Maximum Correlation: ', num2str(lag_at_max_corr)]);