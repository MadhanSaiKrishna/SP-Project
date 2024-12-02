% Load the audio file
[a4, fs_a4] = audioread("audios\4.wav");
La4 = length(a4);

% Define segment indices based on the provided time intervals
% Convert start and end times (in seconds) to sample numbers
start_times = [0.449975, 0.556333, 0.744504, 1.186297, 1.362197, 1.703768, 1.818307];
end_times = [0.556333, 0.744504, 1.026761, 1.362197, 1.703768, 1.818307, 2.125108];

% Convert times to sample indices
start_samples = round(start_times * fs_a4);
end_samples = round(end_times * fs_a4);

% Extract segments for each word
a4_I = a4(start_samples(1):end_samples(1));        % Segment for "I"
a4_didnt = a4(start_samples(2):end_samples(2));    % Segment for "didn't"
a4_say = a4(start_samples(3):end_samples(3));       % Segment for "say"
a4_he = a4(start_samples(4):end_samples(4));        % Segment for "he"
a4_stole = a4(start_samples(5):end_samples(5));     % Segment for "stole"
a4_the = a4(start_samples(6):end_samples(6));       % Segment for "the"
a4_money = a4(start_samples(7):end_samples(7));     % Segment for "money"

% Calculate energy content in each word
E_I = sum(a4_I.^2);
E_didnt = sum(a4_didnt.^2);
E_say = sum(a4_say.^2);
E_he = sum(a4_he.^2);
E_stole = sum(a4_stole.^2);
E_the = sum(a4_the.^2);
E_money = sum(a4_money.^2);

disp('Energy content of the segments :')
disp(['I : ', num2str(E_I)]);
disp(['didn''t : ', num2str(E_didnt)]);
disp(['say : ', num2str(E_say)]);
disp(['he : ', num2str(E_he)]);
disp(['stole : ', num2str(E_stole)]);
disp(['the : ', num2str(E_the)]);
disp(['money : ', num2str(E_money)]);

% Calculate RMS values of the segmented speech signal
a4_I_rms = sqrt(mean(a4_I.^2));
a4_didnt_rms = sqrt(mean(a4_didnt.^2));
a4_say_rms = sqrt(mean(a4_say.^2));
a4_he_rms = sqrt(mean(a4_he.^2));
a4_stole_rms = sqrt(mean(a4_stole.^2));
a4_the_rms = sqrt(mean(a4_the.^2));
a4_money_rms = sqrt(mean(a4_money.^2));

disp('RMS values of the segments :')
disp(['I : ', num2str(a4_I_rms)]);
disp(['didn''t : ', num2str(a4_didnt_rms)]);
disp(['say : ', num2str(a4_say_rms)]);
disp(['he : ', num2str(a4_he_rms)]);
disp(['stole : ', num2str(a4_stole_rms)]);
disp(['the : ', num2str(a4_the_rms)]);
disp(['money : ', num2str(a4_money_rms)]);

% Plotting for each segment

% Plotting for "I"
figure;
subplot(2, 1, 1);
plot(a4_I);
title('Time Domain - I');
xlabel('Samples');
ylabel('Amplitude');
grid on;

subplot(2, 1, 2);
plot(abs(fftshift(fft(a4_I))));
title('Frequency Domain - I');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
grid on;
sgtitle('I');

% Plotting for "didn't"
figure;
subplot(2, 1, 1);
plot(a4_didnt);
title('Time Domain - didn''t');
xlabel('Samples');
ylabel('Amplitude');
grid on;

subplot(2, 1, 2);
plot(abs(fftshift(fft(a4_didnt))));
title('Frequency Domain - didn''t');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
grid on;
sgtitle('didn''t');

% Plotting for "say"
figure;
subplot(2, 1, 1);
plot(a4_say);
title('Time Domain - say');
xlabel('Samples');
ylabel('Amplitude');
grid on;

subplot(2, 1, 2);
plot(abs(fftshift(fft(a4_say))));
title('Frequency Domain - say');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
grid on;
sgtitle('say');

% Plotting for "he"
figure;
subplot(2, 1, 1);
plot(a4_he);
title('Time Domain - he');
xlabel('Samples');
ylabel('Amplitude');
grid on;

subplot(2, 1, 2);
plot(abs(fftshift(fft(a4_he))));
title('Frequency Domain - he');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
grid on;
sgtitle('he');

% Plotting for "stole"
figure;
subplot(2, 1, 1);
plot(a4_stole);
title('Time Domain - stole');
xlabel('Samples');
ylabel('Amplitude');
grid on;

subplot(2, 1, 2);
plot(abs(fftshift(fft(a4_stole))));
title('Frequency Domain - stole');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
grid on;
sgtitle('stole');

% Plotting for "the"
figure;
subplot(2, 1, 1);
plot(a4_the);
title('Time Domain - the');
xlabel('Samples');
ylabel('Amplitude');
grid on;

subplot(2, 1, 2);
plot(abs(fftshift(fft(a4_the))));
title('Frequency Domain - the');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
grid on;
sgtitle('the');

% Plotting for "money"
figure;
subplot(2, 1, 1);
plot(a4_money);
title('Time Domain - money');
xlabel('Samples');
ylabel('Amplitude');
grid on;

subplot(2, 1, 2);
plot(abs(fftshift(fft(a4_money))));
title('Frequency Domain - money');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
grid on;
sgtitle('money');
