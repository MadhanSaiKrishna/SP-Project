clear;
clc

[b1,fs_b1] = audioread("Reference\bird1.wav");
[b2,fs_b2] = audioread("Reference\bird2.wav");
[b3,fs_b3] = audioread("Reference\bird3.wav");

[a8,fs_a8] = audioread("audios\8.mp3");
La8 = length(a8);


