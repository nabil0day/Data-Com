close all;
clc;
fs = 8000; % Sampling frequency
t = 0:1/fs:1-1/fs; % Time duration
cx = 3.0*sin(2*pi*8*100*t) + 5*cos(2*pi*5*100*t) + 0.27*randn(size(t));
bandwidth = obw(cx,fs); % Bandwidth of the signal
L=2.32; % Level of the signal
BitRate = 2*bandwidth*log2(L)
