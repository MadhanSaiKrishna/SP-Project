% Load the audio file
[a7, fs_a7] = audioread("audios\7.mp3");
La7 = length(a7);

% Define segment indices based on the provided time intervals
% Convert start and end times (in seconds) to sample numbers
start_times = [0.449975, 0.556333, 0.744504, 1.186297, 1.362197, 1.703768, 1.818307];
end_times = [0.556333, 0.744504, 1.026761, 1.362197, 1.703768, 1.818307, 2.125108];

% Convert times to sample indices
start_samples = round(start_times * fs_a7);
end_samples = round(end_times * fs_a7);

% Extract segments for each word
a7_I = a7(start_samples(1):end_samples(1));        % Segment for "I"
a7_didnt = a7(start_samples(2):end_samples(2));    % Segment for "didn't"
a7_say = a7(start_samples(3):end_samples(3));       % Segment for "say"
a7_he = a7(start_samples(4):end_samples(4));        % Segment for "he"
a7_stole = a7(start_samples(5):end_samples(5));     % Segment for "stole"
a7_the = a7(start_samples(6):end_samples(6));       % Segment for "the"
a7_money = a7(start_samples(7):end_samples(7));     % Segment for "money"

% Calculate energy content in each word
E_I = sum(a7_I.^2);
E_didnt = sum(a7_didnt.^2);
E_say = sum(a7_say.^2);
E_he = sum(a7_he.^2);
E_stole = sum(a7_stole.^2);
E_the = sum(a7_the.^2);
E_money = sum(a7_money.^2);

disp('Energy content of the segments :')
disp(['I : ', num2str(E_I)]);
disp(['didn''t : ', num2str(E_didnt)]);
disp(['say : ', num2str(E_say)]);
disp(['he : ', num2str(E_he)]);
disp(['stole : ', num2str(E_stole)]);
disp(['the : ', num2str(E_the)]);
disp(['money : ', num2str(E_money)]);

% Calculate RMS values of the segmented speech signal
a7_I_rms = sqrt(mean(a7_I.^2));
a7_didnt_rms = sqrt(mean(a7_didnt.^2));
a7_say_rms = sqrt(mean(a7_say.^2));
a7_he_rms = sqrt(mean(a7_he.^2));
a7_stole_rms = sqrt(mean(a7_stole.^2));
a7_the_rms = sqrt(mean(a7_the.^2));
a7_money_rms = sqrt(mean(a7_money.^2));

disp('RMS values of the segments :')
disp(['I : ', num2str(a7_I_rms)]);
disp(['didn''t : ', num2str(a7_didnt_rms)]);
disp(['say : ', num2str(a7_say_rms)]);
disp(['he : ', num2str(a7_he_rms)]);
disp(['stole : ', num2str(a7_stole_rms)]);
disp(['the : ', num2str(a7_the_rms)]);
disp(['money : ', num2str(a7_money_rms)]);

% Plotting for each segment

% Plotting for "I"
figure;
subplot(2, 1, 1);
plot(a7_I);
title('Time Domain - I');
grid on;

subplot(2, 1, 2);
plot(abs(fftshift(fft(a7_I))));
title('Frequency Domain - I');
grid on;
sgtitle('I');

% Plotting for "didn't"
figure;
subplot(2, 1, 1);
plot(a7_didnt);
title('Time Domain - didn''t');
grid on;

subplot(2, 1, 2);
plot(abs(fftshift(fft(a7_didnt))));
title('Frequency Domain - didn''t');
grid on;
sgtitle('didn''t');

% Plotting for "say"
figure;
subplot(2, 1, 1);
plot(a7_say);
title('Time Domain - say');
grid on;

subplot(2, 1, 2);
plot(abs(fftshift(fft(a7_say))));
title('Frequency Domain - say');
grid on;
sgtitle('say');

% Plotting for "he"
figure;
subplot(2, 1, 1);
plot(a7_he);
title('Time Domain - he');
grid on;

subplot(2, 1, 2);
plot(abs(fftshift(fft(a7_he))));
title('Frequency Domain - he');
grid on;
sgtitle('he');

% Plotting for "stole"
figure;
subplot(2, 1, 1);
plot(a7_stole);
title('Time Domain - stole');
grid on;

subplot(2, 1, 2);
plot(abs(fftshift(fft(a7_stole))));
title('Frequency Domain - stole');
grid on;
sgtitle('stole');

% Plotting for "the"
figure;
subplot(2, 1, 1);
plot(a7_the);
title('Time Domain - the');
grid on;

subplot(2, 1, 2);
plot(abs(fftshift(fft(a7_the))));
title('Frequency Domain - the');
grid on;
sgtitle('the');

% Plotting for "money"
figure;
subplot(2, 1, 1);
plot(a7_money);
title('Time Domain - money');
grid on;

subplot(2, 1, 2);
plot(abs(fftshift(fft(a7_money))));
title('Frequency Domain - money');
grid on;
sgtitle('money');