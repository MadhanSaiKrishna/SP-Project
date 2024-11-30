[b1,fs_b1] = audioread("Reference\bird1.wav");
[b2,fs_b2] = audioread("Reference\bird2.wav");
[b3,fs_b3] = audioread("Reference\bird3.wav");

Lb1 = length(b1);
Lb2 = length(b2);
Lb3 = length(b3);

fft_b1 = fftshift(fft(b1));
fft_b2 = fftshift(fft(b2));
fft_b3 = fftshift(fft(b3));

[f1,fs_f1] = audioread("Task\F1.wav");
[f2,fs_f2] = audioread("Task\F2.wav");
[f3,fs_f3] = audioread("Task\F3.wav");
[f4,fs_f4] = audioread("Task\F4.wav");
[f5,fs_f5] = audioread("Task\F5.wav");
[f6,fs_f6] = audioread("Task\F6.wav");
[f7,fs_f7] = audioread("Task\F7.wav");
[f8,fs_f8] = audioread("Task\F8.wav");


Lf1 = length(f1);
Lf2 = length(f2);
Lf3 = length(f3);
Lf4 = length(f4);
Lf5 = length(f5);
Lf6 = length(f6);
Lf7 = length(f7);
Lf8 = length(f8);

fft_f1 = fftshift(fft(f1));
fft_f2 = fftshift(fft(f2));
fft_f3 = fftshift(fft(f3));
fft_f4 = fftshift(fft(f4));
fft_f5 = fftshift(fft(f5));
fft_f6 = fftshift(fft(f6));
fft_f7 = fftshift(fft(f7));
fft_f8 = fftshift(fft(f8));

% figure;
% plot(fs_b1*(-Lb1/2:Lb1/2 - 1)/Lb1,abs(fft_b1))
% title('Bird 1')
% grid on;

% figure;
% plot(fs_b2*(-Lb2/2:Lb2/2 - 1)/Lb2,abs(fft_b2))
% title('Bird 2')
% grid on;
% 
% figure;
% plot(fs_b3*(-Lb3/2:Lb3/2 - 1)/Lb3,abs(fft_b3))
% title('Bird 3')
% grid on;
% 
% figure;
% plot(fs_f1*(-Lf1/2:Lf1/2-1)/Lf1,abs(fft_f1))
% title('File 1')
% grid on;
% 
% figure;
% plot(fs_f2*(-Lf2/2:Lf2/2-1)/Lf2,abs(fft_f2))
% title('File 2')
% grid on;
% 
% figure;
% plot(fs_f3*(-Lf3/2:Lf3/2-1)/Lf3,abs(fft_f3))
% title('File 3')
% grid on;
% 
% figure;
% plot(fs_f4*(-Lf4/2:Lf4/2-1)/Lf4,abs(fft_f4))
% title('File 4')
% grid on;
% 
% figure;
% plot(fs_f5*(-Lf5/2:Lf5/2-1)/Lf5,abs(fft_f5))
% title('File 5')
% grid on;
% 
% figure;
% plot(fs_f6*(-Lf6/2:Lf6/2-1)/Lf6,abs(fft_f6))
% title('File 6')
% grid on;
% 
% figure;
% plot(fs_f7*(-Lf7/2:Lf7/2-1)/Lf7,abs(fft_f7))
% title('File 7')
% grid on;
% 
% figure;
% plot(fs_f8*(-Lf8/2:Lf8/2-1)/Lf8,abs(fft_f8))
% title('File 8')
% grid on;

% f1b1 = xcorr(abs(fft_f1),abs(fft_b1),0,'coeff');
% f1b2 = xcorr(abs(fft_f1),abs(fft_b2),0,'coeff');
% f1b3 = xcorr(abs(fft_f1),abs(fft_b3),0,'coeff');
% 
% disp(['F1 and B1 ',num2str(f1b1)]);
% disp(['F1 and B2 ',num2str(f1b2)]);
% disp(['F1 and B3 ',num2str(f1b3)]);


f2b1 = xcorr(abs(fft_f2),abs(fft_b1),0,'coeff');
f2b2 = xcorr(abs(fft_f2),abs(fft_b2),0,'coeff');
f2b3 = xcorr(abs(fft_f2),abs(fft_b3),0,'coeff');

disp(['F2 and B1 ',num2str(f2b1)]);
disp(['F2 and B2 ',num2str(f2b2)]);
disp(['F2 and B3 ',num2str(f2b3)]);
