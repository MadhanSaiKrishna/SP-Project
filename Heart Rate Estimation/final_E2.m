% E2=abs(E2).^2;
close all;
load('E2.mat'); 
fs=128;
E2=E2(5000:5500);

freqresp=fft(E2);
% filtered_l=lowpass(E2,20,128);
fc = 7; % Cutoff frequency in Hz
[b, a] = butter(7, fc / (fs / 2), 'low');
E2_filtered = filtfilt(b, a, E2);

filtered_h=highpass(filtered_l,0.5,128);


ECG_diff = diff(filtered_h);
ECG_squared = ECG_diff .^ 2;

timE2 = (0:length(E2)-1) / fs;

time2 = (0:length(E2)-2) / fs;

window_size = round(0.12 * fs); 
ECG_ma = movmean(ECG_squared, window_size);

threshold = 0.6 * max(ECG_ma); % 60% of the maximum value
[peaks, locs] = findpeaks(ECG_ma, 'MinPeakHeight', threshold, 'MinPeakDistance', round(0.2 * fs));

RR_intervals = diff(locs) / fs; 
HR = 60 ./ RR_intervals;
HR_time = timE2(locs(2:end));

% figure;
% subplot(3,1,1);
% plot(E2);
% subplot(3,1,2);
% plot(filtered_l);
% subplot(3,1,3);
% plot(filtered_h);

figure;
subplot(3,1,1);
plot(abs(fftshift(fft(E2))));
subplot(3,1,2);
plot(abs(fftshift(fft(filtered_l))));
subplot(3,1,3);
plot(abs(fftshift(fft(filtered_h))));

figure;
subplot(2,1,1);
plot(timE2,E2);
% hold on;
% plot(time2,ECG_ma);
% hold off;
xlabel("time");
ylabel("ECG signal");

subplot(2,1,2);
% plot(HR);
plot(time2,ECG_ma);
xlabel("time");
ylabel("heart rate");

