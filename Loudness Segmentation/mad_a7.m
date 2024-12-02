[a7,fs_a7] = audioread("audios\7.mp3");
La7 = length(a7);

a7_i = a1(20950:48209);
a7_didnt = a1(48350:57180);
a7_say = a1(57180:68550);
a7_he = a1(68550:86970);
a7_stole = 
a7_the = 

%Energy content in each word
E1_wow = sum(a1_wow.^2);
E1_i = sum(a1_i.^2);
E1_won = sum(a1_won.^2);
E1_it = sum(a1_it.^2);

disp('Energy content of the segments :')
disp(['Wow :',num2str(E1_wow)]);
disp(['i :',num2str(E1_i)]);
disp(['won :',num2str(E1_won)]);
disp(['it :',num2str(E1_it)]);

% figure;
% subplot(2,1,1);
% plot(a1_wow);
% title('Time Domain')
% grid on;
% subplot(2,1,2);
% plot(abs(fftshift(fft(a1_wow))))
% title('Frequency Domain')
% grid on;
% sgtitle('Wow')
% 
% figure;
% subplot(2,1,1);
% plot(a1_i);
% title('Time Domain')
% grid on;
% subplot(2,1,2);
% plot(abs(fftshift(fft(a1_i))))
% title('Frequency Domain')
% grid on;
% sgtitle('i')
% 
% figure;
% subplot(2,1,1);
% plot(a1_won);
% title('Time Domain')
% grid on;
% subplot(2,1,2);
% plot(abs(fftshift(fft(a1_won))))
% title('Frequency Domain')
% grid on;
% sgtitle('won')
% 
% figure;
% subplot(2,1,1);
% plot(a1_it);
% title('Time Domain')
% grid on;
% subplot(2,1,2);
% plot(abs(fftshift(fft(a1_it))))
% title('Frequency Domain')
% grid on;
% sgtitle('it')

%RMS values of the segmented speech signal

a1_wow_rms = sqrt(mean(a1(20950:48209).^2));
a1_i_rms = sqrt(mean(a1(48350:57180).^2));
a1_won_rms= sqrt(mean(a1(57180:68550).^2));
a1_it_rms = sqrt(mean(a1(68550:86970).^2));
    
% disp('RMS values of the segments :')
% disp(['Wow :',num2str(a1_wow_rms)]);
% disp(['i :',num2str(a1_i_rms)]);
% disp(['won :',num2str(a1_won_rms)]);
% disp(['it :',num2str(a1_it_rms)]);
