[b1,fs_b1] = audioread("Reference\bird1.wav");
[b2,fs_b2] = audioread("Reference\bird2.wav");
[b3,fs_b3] = audioread("Reference\bird3.wav");

Lb1 = length(b1);
Lb2 = length(b2);
Lb3 = length(b3);

[f1,fs_f1] = audioread("Task\F1.wav");
Lf1 = length(f1);

[f2,fs_f2] = audioread("Task\F2.wav");
Lf2 = length(f2);

[f3,fs_f3] = audioread("Task\F3.wav");
Lf3 = length(f3);

[f4,fs_f4] = audioread("Task\F4.wav");
Lf4 = length(f4);

[f5,fs_f5] = audioread("Task\F5.wav");
Lf5 = length(f5);

[f6,fs_f6] = audioread("Task\F6.wav");
Lf6 = length(f6);

[f7,fs_f7] = audioread("Task\F7.wav");
Lf7 = length(f7);

[f8,fs_f8] = audioread("Task\F8.wav");
Lf8 = length(f8);

figure;
plot(fs_b1*(-Lb1/2:Lb1/2 - 1)/Lb1,abs(fftshift(fft(b1))))
title('Bird 1')
grid on;

figure;
plot(fs_b2*(-Lb2/2:Lb2/2 - 1)/Lb2,abs(fftshift(fft(b2))))
title('Bird 2')
grid on;

figure;
plot(fs_b3*(-Lb3/2:Lb3/2 - 1)/Lb3,abs(fftshift(fft(b3))))
title('Bird 3')
grid on;

figure;
plot(fs_f1*(-Lf1/2:Lf1/2-1)/Lf1,abs(fftshift(fft(f1))))
title('File 1')
grid on;

figure;
plot(fs_f2*(-Lf2/2:Lf2/2-1)/Lf2,abs(fftshift(fft(f2))))
title('File 2')
grid on;

figure;
plot(fs_f3*(-Lf3/2:Lf3/2-1)/Lf3,abs(fftshift(fft(f3))))
title('File 3')
grid on;

figure;
plot(fs_f4*(-Lf4/2:Lf4/2-1)/Lf4,abs(fftshift(fft(f4))))
title('File 4')
grid on;

figure;
plot(fs_f5*(-Lf5/2:Lf5/2-1)/Lf5,abs(fftshift(fft(f5))))
title('File 5')
grid on;

figure;
plot(fs_f6*(-Lf6/2:Lf6/2-1)/Lf6,abs(fftshift(fft(f6))))
title('File 6')
grid on;

figure;
plot(fs_f7*(-Lf7/2:Lf7/2-1)/Lf7,abs(fftshift(fft(f7))))
title('File 7')
grid on;

figure;
plot(fs_f8*(-Lf8/2:Lf8/2-1)/Lf8,abs(fftshift(fft(f8))))
title('File 8')
grid on;