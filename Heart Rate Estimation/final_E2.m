close all;
load('E2.mat'); 
fs = 128;
E2 = E2(1:500);

fc_low = 40; % Lowpass cutoff frequency in Hz
fc_high = 0.5; % Highpass cutoff frequency in Hz

[b_low, a_low] = butter(7, fc_low / (fs / 2), 'low');
[b_high, a_high] = butter(7, fc_high / (fs / 2), 'high');

filtered_l = filtfilt(b_low, a_low, E2);
filtered_h = filtfilt(b_high, a_high, filtered_l);
% filtered_l=zeros(1,length(filtered_h));

ECG_diff = diff(filtered_h);
ECG_squared = ECG_diff .^ 2;

time1 = (0:length(E2)-1) / fs;
time2 = (0:length(ECG_squared)-1) / fs;

window_size = round(0.12 * fs); 
ECG_ma = movmean(ECG_squared, window_size);

threshold = 0.3 * max(ECG_ma); % Adjusted to 30% of the maximum
[peaks, locs] = findpeaks(ECG_ma, 'MinPeakHeight', threshold, 'MinPeakDistance', round(0.3 * fs));

RR_intervals = diff(locs) / fs; 
HR = 60 ./ RR_intervals;
HR_time = time1(locs(2:end));

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

figure;
subplot(3,1,1);
plot(fftshift(abs(fft(E2))));
title("Original ECG Signal fft");
ylabel("Amplitude");
xlabel("Time (s)");

subplot(3,1,2);
plot(fftshift(abs(fft(filtered_l))));
title("Low-Pass Filtered Signal fft");
ylabel("Amplitude");
xlabel("Time (s)");

subplot(3,1,3);
plot(fftshift(abs(fft(filtered_h))));
title("High-Pass Filtered Signal");
ylabel("Amplitude");
xlabel("Time (s)");


figure;
subplot(2,1,1);
plot(E2);
subplot(2,1,2);
plot(time2, ECG_ma, 'b');
hold on;
plot(time2(locs), ECG_ma(locs), 'ro');
title("ECG Moving Average with Detected Peaks");
xlabel("Time (s)");
ylabel("Amplitude");
legend("ECG Moving Average", "Detected Peaks");

figure;
if ~isempty(HR)
    plot(HR_time, HR, 'r');
    title("Heart Rate Over Time");
    xlabel("Time (s)");
    ylabel("Heart Rate (bpm)");
else
    disp("Not enough peaks detected for heart rate calculation.");
end

figure;
plot(fs * ((-length(E2)/2 : (length(E2)-1)/2) / length(E2)), fftshift(abs(fft(E2))));

