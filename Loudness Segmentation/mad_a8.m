% Load the audio file
[a8, fs_a8] = audioread("audios\8.mp3");
La8 = length(a8);

% Define segment indices based on the provided time intervals
% Convert start and end times (in seconds) to sample numbers
start_times = [0.458962, 0.615380, 0.965261, 1.218411, 1.323375, 1.578583, 1.681489];
end_times = [0.615380, 0.965261, 1.218411, 1.323375, 1.578583, 1.681489, 2.033429];

% Convert times to sample indices
start_samples = round(start_times * fs_a8);
end_samples = round(end_times * fs_a8);

% Extract segments for each word
a8_I = a8(start_samples(1):end_samples(1));        % Segment for "I"
a8_didnt = a8(start_samples(2):end_samples(2));    % Segment for "didn't"
a8_say = a8(start_samples(3):end_samples(3));       % Segment for "say"
a8_he = a8(start_samples(4):end_samples(4));        % Segment for "he"
a8_stole = a8(start_samples(5):end_samples(5));     % Segment for "stole"
a8_the = a8(start_samples(6):end_samples(6));       % Segment for "the"
a8_money = a8(start_samples(7):end_samples(7));     % Segment for "money"

% Calculate energy content in each word
E_I = sum(a8_I.^2);
E_didnt = sum(a8_didnt.^2);
E_say = sum(a8_say.^2);
E_he = sum(a8_he.^2);
E_stole = sum(a8_stole.^2);
E_the = sum(a8_the.^2);
E_money = sum(a8_money.^2);

disp('Energy content of the segments :')
disp(['I : ', num2str(E_I)]);
disp(['didn''t : ', num2str(E_didnt)]);
disp(['say : ', num2str(E_say)]);
disp(['he : ', num2str(E_he)]);
disp(['stole : ', num2str(E_stole)]);
disp(['the : ', num2str(E_the)]);
disp(['money : ', num2str(E_money)]);

% Calculate RMS values of the segmented speech signal
a8_I_rms = sqrt(mean(a8_I.^2));
a8_didnt_rms = sqrt(mean(a8_didnt.^2));
a8_say_rms = sqrt(mean(a8_say.^2));
a8_he_rms = sqrt(mean(a8_he.^2));
a8_stole_rms = sqrt(mean(a8_stole.^2));
a8_the_rms = sqrt(mean(a8_the.^2));
a8_money_rms = sqrt(mean(a8_money.^2));

disp('RMS values of the segments :')
disp(['I : ', num2str(a8_I_rms)]);
disp(['didn''t : ', num2str(a8_didnt_rms)]);
disp(['say : ', num2str(a8_say_rms)]);
disp(['he : ', num2str(a8_he_rms)]);
disp(['stole : ', num2str(a8_stole_rms)]);
disp(['the : ', num2str(a8_the_rms)]);
disp(['money : ', num2str(a8_money_rms)]);

% Plotting for each segment

% Plotting for "I"
figure;
subplot(2, 1, 1);
plot(a8_I);
title('Time Domain - I');
grid on;

subplot(2, 1, 2);
plot(abs(fftshift(fft(a8_I))));
title('Frequency Domain - I');
grid on;
sgtitle('I');

% Plotting for "didn't"
figure;
subplot(2, 1, 1);
plot(a8_didnt);
title('Time Domain - didn''t');
grid on;

subplot(2, 1, 2);
plot(abs(fftshift(fft(a8_didnt))));
title('Frequency Domain - didn''t');
grid on;
sgtitle('didn''t');

% Plotting for "say"
figure;
subplot(2, 1, 1);
plot(a8_say);
title('Time Domain - say');
grid on;

subplot(2, 1, 2);
plot(abs(fftshift(fft(a8_say))));
title('Frequency Domain - say');
grid on;
sgtitle('say');

% Plotting for "he"
figure;
subplot(2, 1, 1);
plot(a8_he);
title('Time Domain - he');
grid on;

subplot(2, 1, 2);
plot(abs(fftshift(fft(a8_he))));
title('Frequency Domain - he');
grid on;
sgtitle('he');

% Plotting for "stole"
figure;
subplot(2, 1, 1);
plot(a8_stole);
title('Time Domain - stole');
grid on;

subplot(2, 1, 2);
plot(abs(fftshift(fft(a8_stole))));
title('Frequency Domain - stole');
grid on;
sgtitle('stole');

% Plotting for "the"
figure;
subplot(2, 1, 1);
plot(a8_the);
title('Time Domain - the');
grid on;

subplot(2, 1, 2);
plot(abs(fftshift(fft(a8_the))));
title('Frequency Domain - the');
grid on;
sgtitle('the');

% Plotting for "money"
figure;
subplot(2, 1, 1);
plot(a8_money);
title('Time Domain - money');
grid on;

subplot(2, 1, 2);
plot(abs(fftshift(fft(a8_money))));
title('Frequency Domain - money');
grid on;
sgtitle('money');