% E1=abs(E1).^2;
load('E1.mat'); 
fs=128;
% E1=E1(5000:5500);

ECG_diff = diff(E1);
ECG_squared = ECG_diff .^ 2;

time1 = (0:length(E1)-1) / fs;

time2 = (0:length(E1)-2) / fs;

window_size = round(0.12 * fs); 
ECG_ma = movmean(ECG_squared, window_size);

threshold = 0.6 * max(ECG_ma); % 60% of the maximum value
[peaks, locs] = findpeaks(ECG_ma, 'MinPeakHeight', threshold, 'MinPeakDistance', round(0.5* fs));

RR_intervals = diff(locs) / fs; 
HR = 60 ./ RR_intervals;
HR_time = time1(locs(2:end));

figure;
subplot(2,1,1);
% plot(time1,E1);
plot(E1)
hold on;
plot(ECG_ma);
% plot(time2,ECG_ma);
% hold off;
xlabel("time");
ylabel("ECG signal");

subplot(2,1,2);
% plot(ECG_ma);
% xlabel("time");
% ylabel("heart rate");

% figure;
plot(HR_time,HR);

