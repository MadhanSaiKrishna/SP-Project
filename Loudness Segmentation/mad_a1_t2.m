clear;
clc;
[a1,fs_a1] = audioread("audios\1.wav");
La1 = length(a1);

rms_a1_val = sqrt(mean(a1.*a1));

rms_al_env = envelope(a1,100,'rms');

threshold = 0.5*max(rms_al_env);

louder_samples = find(a1>threshold);

louder_times = louder_samples/fs_a1;

a1_wow = a1(20950:48209);
