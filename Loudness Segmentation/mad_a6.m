[a6,fs_a6] = audioread("audios\6.wav");
La6 = length(a6);

% a6_smoothened = movmean(a6,20);
window_length = 500;
envelope(a6,window_length,'rms')


% subplot(2,1,1);
% plot(a6);
% subplot(2,1,2);
% plot(a6_smoothened)
