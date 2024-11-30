E1_data =  load("E1.mat");

given_data = E1_data.E1;
my_data = given_data(1:100);

N = length(my_data);
f = (0:N-1);
wf = (2/N)*f;
fs = 128;

% highpass(my_data,0.2,fs);
% lowpass(my_data,0.02*pi*250,fs);
% figure;
% plot(my_data);
% grid on;

% figure;
% stem(f,abs((fftshift(fft(my_data)))));
% grid on;

% figure;
% stem(wf,abs(fft(my_data)));
% grid on;