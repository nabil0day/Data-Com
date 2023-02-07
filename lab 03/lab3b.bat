>> fs = 8000; % Sampling frequency
f = 3; %Hz
%Define signal
t = 0:1/fs:1-1/fs;
A1 = 3;
A2=5;
s = 0.27;
%signal
x = 3.0*sin(2*pi*8*100*t) + 5*cos(2*pi*5*100*t) + 0.27*randn(size(t));
%noise
ns = 0.27*randn(size(signal));
S_N_R = snr(x,ns);
bandwidth = obw(x,fs); % Bandwidth of the signal
>> C = bandwidth*log2(1+SNR) % Capacity of the channel

