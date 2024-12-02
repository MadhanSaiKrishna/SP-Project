% Load the audio file
[a6, fs_a6] = audioread("audios\6.wav");
La6 = length(a6);

% Define segment indices based on the provided time intervals
% Convert start and end times (in seconds) to sample numbers
start_times = [0.457101, 0.721523, 1.004392, 1.184773, 1.539385, 1.781259];
end_times = [0.721523, 1.004392, 1.184773, 1.455344, 1.781259, 2.357247];

% Convert times to sample indices
start_samples = round(start_times * fs_a6);
end_samples = round(end_times * fs_a6);

% Extract segments for each word
a6_I = a6(start_samples(1):end_samples(1));        % Segment for "I"
a6_told = a6(start_samples(2):end_samples(2));     % Segment for "told"
a6_you = a6(start_samples(3):end_samples(3));       % Segment for "you"
a6_this = a6(start_samples(4):end_samples(4));      % Segment for "this"
a6_would = a6(start_samples(5):end_samples(5));     % Segment for "would"
a6_happen = a6(start_samples(6):end_samples(6));    % Segment for "happen"

% Calculate energy content in each word
E_I = sum(a6_I.^2);
E_told = sum(a6_told.^2);
E_you = sum(a6_you.^2);
E_this = sum(a6_this.^2);
E_would = sum(a6_would.^2);
E_happen = sum(a6_happen.^2);

disp('Energy content of the segments :')
disp(['I : ', num2str(E_I)]);
disp(['told : ', num2str(E_told)]);
disp(['you : ', num2str(E_you)]);
disp(['this : ', num2str(E_this)]);
disp(['would : ', num2str(E_would)]);
disp(['happen : ', num2str(E_happen)]);

% Calculate RMS values of the segmented speech signal
a6_I_rms = sqrt(mean(a6_I.^2));
a6_told_rms = sqrt(mean(a6_told.^2));
a6_you_rms = sqrt(mean(a6_you.^2));
a6_this_rms = sqrt(mean(a6_this.^2));
a6_would_rms = sqrt(mean(a6_would.^2));
a6_happen_rms = sqrt(mean(a6_happen.^2));

disp('RMS values of the segments :')
disp(['I : ', num2str(a6_I_rms)]);
disp(['told : ', num2str(a6_told_rms)]);
disp(['you : ', num2str(a6_you_rms)]);
disp(['this : ', num2str(a6_this_rms)]);
disp(['would : ', num2str(a6_would_rms)]);
disp(['happen : ', num2str(a6_happen_rms)]);

% Plotting for each segment

% Plotting for "I"
figure;
subplot(2, 1, 1);
plot(a6_I);
title('Time Domain - I');
grid on;

subplot(2, 1, 2);
plot(abs(fftshift(fft(a6_I))));
title('Frequency Domain - I');
grid on;
sgtitle('I');

% Plotting for "told"
figure;
subplot(2, 1, 1);
plot(a6_told);
title('Time Domain - told');
grid on;

subplot(2, 1, 2);
plot(abs(fftshift(fft(a6_told))));
title('Frequency Domain - told');
grid on;
sgtitle('told');

% Plotting for "you"
figure;
subplot(2, 1, 1);
plot(a6_you);
title('Time Domain - you');
grid on;

subplot(2, 1, 2);
plot(abs(fftshift(fft(a6_you))));
title('Frequency Domain - you');
grid on;
sgtitle('you');

% Plotting for "this"
figure;
subplot(2, 1, 1);
plot(a6_this);
title('Time Domain - this');
grid on;

subplot(2, 1, 2);
plot(abs(fftshift(fft(a6_this))));
title('Frequency Domain - this');
grid on;
sgtitle('this');

% Plotting for "would"
figure;
subplot(2, 1, 1);
plot(a6_would);
title('Time Domain - would');
grid on;

subplot(2, 1, 2);
plot(abs(fftshift(fft(a6_would))));
title('Frequency Domain - would');
grid on;
sgtitle('would');

% Plotting for "happen"
figure;
subplot(2, 1, 1);
plot(a6_happen);
title('Time Domain - happen');
grid on;

subplot(2, 1, 2);
plot(abs(fftshift(fft(a6_happen))));
title('Frequency Domain - happen');
grid on;
sgtitle('happen');