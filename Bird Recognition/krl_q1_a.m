close all;


[b1, fs_b1] = audioread("Reference\bird1.wav");
[b2, fs_b2] = audioread("Reference\bird2.wav");
[b3, fs_b3] = audioread("Reference\bird3.wav");


[f1, fs_f1] = audioread("Task\F1.wav");
[f2, fs_f2] = audioread("Task\F2.wav");
[f3, fs_f3] = audioread("Task\F3.wav");
[f4, fs_f4] = audioread("Task\F4.wav");
[f5, fs_f5] = audioread("Task\F5.wav");
[f6, fs_f6] = audioread("Task\F6.wav");
[f7, fs_f7] = audioread("Task\F7.wav");
[f8, fs_f8] = audioread("Task\F8.wav");


Lb1 = length(b1);
Lb2 = length(b2);
Lb3 = length(b3);
Lf1 = length(f1);
Lf2 = length(f2);
Lf3 = length(f3);
Lf4 = length(f4);
Lf5 = length(f5);
Lf6 = length(f6);
Lf7 = length(f7);
Lf8 = length(f8);

fft_b1 = fftshift(fft(b1));
fft_b2 = fftshift(fft(b2));
fft_b3 = fftshift(fft(b3));


fft_f1 = fftshift(fft(f1));
fft_f2 = fftshift(fft(f2));
fft_f3 = fftshift(fft(f3));
fft_f4 = fftshift(fft(f4));
fft_f5 = fftshift(fft(f5));
fft_f6 = fftshift(fft(f6));
fft_f7 = fftshift(fft(f7));
fft_f8 = fftshift(fft(f8));

% Frequency vectors for plotting
freq_f1 = fs_f1 * (-Lf1/2:Lf1/2-1) / Lf1;
freq_b1 = fs_b1 * (-Lb1/2:Lb1/2-1) / Lb1;
freq_b2 = fs_b2 * (-Lb2/2:Lb2/2-1) / Lb2;
freq_b3 = fs_b3 * (-Lb3/2:Lb3/2-1) / Lb3;

% Magnitude of FFTs
mag_f1 = abs(fft_f1);
mag_b1 = abs(fft_b1);
mag_b2 = abs(fft_b2);
mag_b3 = abs(fft_b3);


task_files = {fft_f1, fft_f2, fft_f3, fft_f4, fft_f5, fft_f6, fft_f7, fft_f8};
bird_files = {fft_b1, fft_b2, fft_b3};

correlations = zeros(8, 3);  

for i = 1:8
    for j = 1:3
        
        correlations(i, j) = xcorr(abs(task_files{i}), abs(bird_files{j}), 0, 'coeff');
    end
end


for i = 1:8
    [max_corr, best_bird_index] = max(correlations(i, :));
    
    disp(['File F' num2str(i) ' matches with Bird ' num2str(best_bird_index) ' with correlation ' num2str(max_corr)]);
end
