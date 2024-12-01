% Load and process the data
close all;
load('E2.mat'); 
fs = 128;
E2 = E2(5000:5500);

% FFT and Filtering
freqresp = fft(E2);
fc = 30; % Cutoff frequency in Hz
[b, a] = butter(7, fc / (fs / 2), 'low');
filtered_l = filtfilt(b, a, E2);
filtered_h = highpass(filtered_l, 0.5, 128);

% ECG Differentiation and Squaring
ECG_diff = diff(filtered_h);
ECG_squared = ECG_diff .^ 2;

% Time Axes
time1 = (0:length(E2)-1) / fs;
time2 = (0:length(E2)-2) / fs;

% Moving Average and Heart Rate Calculation
window_size = round(0.12 * fs); 
ECG_ma = movmean(ECG_squared, window_size);
threshold = 0.6 * max(ECG_ma); % 60% of the maximum value
[peaks, locs] = findpeaks(ECG_ma, 'MinPeakHeight', threshold, 'MinPeakDistance', round(0.5 * fs));

RR_intervals = diff(locs) / fs; 
HR = 60 ./ RR_intervals;
HR_time = time1(locs(2:end));

% Plot 1: FFT of Signals
figure;
subplot(3,1,1);
plot(abs(fftshift(fft(E2))));
ylabel("Magnitude |FFT(E2)|");
xlabel("Frequency (Hz)");
title("FFT of Original Signal");

subplot(3,1,2);
plot(abs(fftshift(fft(filtered_l))));
ylabel("Magnitude |FFT(Filtered Low Pass)|");
xlabel("Frequency (Hz)");
title("FFT of Low-Pass Filtered Signal");

subplot(3,1,3);
plot(abs(fftshift(fft(filtered_h))));
ylabel("Magnitude |FFT(Filtered High Pass)|");
xlabel("Frequency (Hz)");
title("FFT of High-Pass Filtered Signal");

% Plot 2: Time-Domain Signals
figure;
subplot(3,1,1);
plot(time1, E2);
title("Original ECG Signal");
ylabel("Amplitude");
xlabel("Time (s)");

subplot(3,1,2);
plot(time1, filtered_l);
title("Low-Pass Filtered Signal");
ylabel("Amplitude");
xlabel("Time (s)");

subplot(3,1,3);
plot(time1, filtered_h);
title("High-Pass Filtered Signal");
ylabel("Amplitude");
xlabel("Time (s)");

% Plot 3: Heart Rate Analysis
figure;
subplot(2,1,1);
plot(time1, filtered_h);
title("Filtered High-Pass Signal");
ylabel("Amplitude");
xlabel("Time (s)");

subplot(2,1,2);
plot(time2, ECG_ma);
title("ECG Moving Average with Peaks");
ylabel("Smoothed Squared Derivative");
xlabel("Time (s)");


figure;
subplot(2,1,1);
plot(time1,E2);
title("original");
ylabel("Amplitude");
xlabel("Time (s)");

subplot(2,1,2);
plot(HR);
title("heart rate");
ylabel("HR");
xlabel("Time (s)");