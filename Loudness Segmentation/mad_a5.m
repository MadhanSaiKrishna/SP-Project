% Load the audio file
[a5, fs_a5] = audioread("audios\5.wav");
La5 = length(a5);

% Define segment indices based on the provided time intervals
% Convert start and end times (in seconds) to sample numbers
start_times = [0.513851, 0.979678, 1.366266, 1.846501, 2.105827, 2.264305];
end_times = [0.838009, 1.366266, 1.846501, 2.105827, 2.264305, 2.895813];

% Convert times to sample indices
start_samples = round(start_times * fs_a5);
end_samples = round(end_times * fs_a5);

% Extract segments for each word
a5_I = a5(start_samples(1):end_samples(1));      % Segment for "I"
a5_told = a5(start_samples(2):end_samples(2));   % Segment for "told"
a5_you = a5(start_samples(3):end_samples(3));     % Segment for "you"
a5_this = a5(start_samples(4):end_samples(4));    % Segment for "this"
a5_would = a5(start_samples(5):end_samples(5));    % Segment for "would"
a5_happen = a5(start_samples(6):end_samples(6));   % Segment for "happen"

% Calculate energy content in each word
E_I = sum(a5_I.^2);
E_told = sum(a5_told.^2);
E_you = sum(a5_you.^2);
E_this = sum(a5_this.^2);
E_would = sum(a5_would.^2);
E_happen = sum(a5_happen.^2);

disp('Energy content of the segments :')
disp(['I : ', num2str(E_I)]);
disp(['told : ', num2str(E_told)]);
disp(['you : ', num2str(E_you)]);
disp(['this : ', num2str(E_this)]);
disp(['would : ', num2str(E_would)]);
disp(['happen : ', num2str(E_happen)]);

% Calculate RMS values of the segmented speech signal
a5_I_rms = sqrt(mean(a5_I.^2));
a5_told_rms = sqrt(mean(a5_told.^2));
a5_you_rms = sqrt(mean(a5_you.^2));
a5_this_rms = sqrt(mean(a5_this.^2));
a5_would_rms = sqrt(mean(a5_would.^2));
a5_happen_rms = sqrt(mean(a5_happen.^2));

disp('RMS values of the segments :')
disp(['I : ', num2str(a5_I_rms)]);
disp(['told : ', num2str(a5_told_rms)]);
disp(['you : ', num2str(a5_you_rms)]);
disp(['this : ', num2str(a5_this_rms)]);
disp(['would : ', num2str(a5_would_rms)]);
disp(['happen : ', num2str(a5_happen_rms)]);

% Plotting for each segment

% Plotting for "I"
figure;
subplot(2, 1, 1);
plot(a5_I);
title('Time Domain - I');
grid on;

subplot(2, 1, 2);
plot(abs(fftshift(fft(a5_I))));
title('Frequency Domain - I');
grid on;
sgtitle('I');

% Plotting for "told"
figure;
subplot(2, 1, 1);
plot(a5_told);
title('Time Domain - told');
grid on;

subplot(2, 1, 2);
plot(abs(fftshift(fft(a5_told))));
title('Frequency Domain - told');
grid on;
sgtitle('told');

% Plotting for "you"
figure;
subplot(2, 1, 1);
plot(a5_you);
title('Time Domain - you');
grid on;

subplot(2, 1, 2);
plot(abs(fftshift(fft(a5_you))));
title('Frequency Domain - you');
grid on;
sgtitle('you');

% Plotting for "this"
figure;
subplot(2, 1, 1);
plot(a5_this);
title('Time Domain - this');
grid on;

subplot(2, 1, 2);
plot(abs(fftshift(fft(a5_this))));
title('Frequency Domain - this');
grid on;
sgtitle('this');

% Plotting for "would"
figure;
subplot(2, 1, 1);
plot(a5_would);
title('Time Domain - would');
grid on;

subplot(2, 1, 2);
plot(abs(fftshift(fft(a5_would))));
title('Frequency Domain - would');
grid on;
sgtitle('would');

% Plotting for "happen"
figure;
subplot(2, 1, 1);
plot(a5_happen);
title('Time Domain - happen');
grid on;

subplot(2, 1, 2);
plot(abs(fftshift(fft(a5_happen))));
title('Frequency Domain - happen');
grid on;
sgtitle('happen');