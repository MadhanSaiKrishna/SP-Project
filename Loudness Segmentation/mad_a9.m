% Load the audio file
[a9, fs_a9] = audioread("audios\9.mp3");
La9 = length(a9);

% Define segment indices based on the provided time intervals
% Convert start and end times (in seconds) to sample numbers
start_times = [0.463641, 0.555976, 0.685638, 0.919423, 0.999971, 1.701326, 1.795626];
end_times = [0.555976, 0.685638, 0.919423, 0.999971, 1.701326, 1.795626, 2.208187];

% Convert times to sample indices
start_samples = round(start_times * fs_a9);
end_samples = round(end_times * fs_a9);

% Extract segments for each word
a9_I = a9(start_samples(1):end_samples(1));        % Segment for "I"
a9_didnt = a9(start_samples(2):end_samples(2));    % Segment for "didn't"
a9_say = a9(start_samples(3):end_samples(3));       % Segment for "say"
a9_he = a9(start_samples(4):end_samples(4));        % Segment for "he"
a9_stole = a9(start_samples(5):end_samples(5));     % Segment for "stole"
a9_the = a9(start_samples(6):end_samples(6));       % Segment for "the"
a9_money = a9(start_samples(7):end_samples(7));     % Segment for "money"

% Calculate energy content in each word
E_I = sum(a9_I.^2);
E_didnt = sum(a9_didnt.^2);
E_say = sum(a9_say.^2);
E_he = sum(a9_he.^2);
E_stole = sum(a9_stole.^2);
E_the = sum(a9_the.^2);
E_money = sum(a9_money.^2);

disp('Energy content of the segments :')
disp(['I : ', num2str(E_I)]);
disp(['didn''t : ', num2str(E_didnt)]);
disp(['say : ', num2str(E_say)]);
disp(['he : ', num2str(E_he)]);
disp(['stole : ', num2str(E_stole)]);
disp(['the : ', num2str(E_the)]);
disp(['money : ', num2str(E_money)]);

% Calculate RMS values of the segmented speech signal
a9_I_rms = sqrt(mean(a9_I.^2));
a9_didnt_rms = sqrt(mean(a9_didnt.^2));
a9_say_rms = sqrt(mean(a9_say.^2));
a9_he_rms = sqrt(mean(a9_he.^2));
a9_stole_rms = sqrt(mean(a9_stole.^2));
a9_the_rms = sqrt(mean(a9_the.^2));
a9_money_rms = sqrt(mean(a9_money.^2));

disp('RMS values of the segments :')
disp(['I : ', num2str(a9_I_rms)]);
disp(['didn''t : ', num2str(a9_didnt_rms)]);
disp(['say : ', num2str(a9_say_rms)]);
disp(['he : ', num2str(a9_he_rms)]);
disp(['stole : ', num2str(a9_stole_rms)]);
disp(['the : ', num2str(a9_the_rms)]);
disp(['money : ', num2str(a9_money_rms)]);

% Plotting for each segment

% Plotting for "I"
figure;
subplot(2, 1, 1);
plot(a9_I);
title('Time Domain - I');
grid on;

subplot(2, 1, 2);
plot(abs(fftshift(fft(a9_I))));
title('Frequency Domain - I');
grid on;
sgtitle('I');

% Plotting for "didn't"
figure;
subplot(2, 1, 1);
plot(a9_didnt);
title('Time Domain - didn''t');
grid on;

subplot(2, 1, 2);
plot(abs(fftshift(fft(a9_didnt))));
title('Frequency Domain - didn''t');
grid on;
sgtitle('didn''t');

% Plotting for "say"
figure;
subplot(2, 1, 1);
plot(a9_say);
title('Time Domain - say');
grid on;

subplot(2, 1, 2);
plot(abs(fftshift(fft(a9_say))));
title('Frequency Domain - say');
grid on;
sgtitle('say');

% Plotting for "he"
figure;
subplot(2, 1, 1);
plot(a9_he);
title('Time Domain - he');
grid on;

subplot(2, 1, 2);
plot(abs(fftshift(fft(a9_he))));
title('Frequency Domain - he');
grid on;
sgtitle('he');

% Plotting for "stole"
figure;
subplot(2, 1, 1);
plot(a9_stole);
title('Time Domain - stole');
grid on;

subplot(2, 1, 2);
plot(abs(fftshift(fft(a9_stole))));
title('Frequency Domain - stole');
grid on;
sgtitle('stole');

% Plotting for "the"
figure;
subplot(2, 1, 1);
plot(a9_the);
title('Time Domain - the');
grid on;

subplot(2, 1, 2);
plot(abs(fftshift(fft(a9_the))));
title('Frequency Domain - the');
grid on;
sgtitle('the');

% Plotting for "money"
figure;
subplot(2, 1, 1);
plot(a9_money);
title('Time Domain - money');
grid on;

subplot(2, 1, 2);
plot(abs(fftshift(fft(a9_money))));
title('Frequency Domain - money');
grid on;
sgtitle('money');