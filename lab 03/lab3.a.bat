close all;
clc;
%Define number of samples to take
fs = 8000; % Sampling frequency
f = 400; %Hz
%Define signal
t = 0:1/fs:1-1/fs;
A1 = 3.0;
A2=5.0;
powfund = ((A1^2/2)+(A2^2/2))
s = 0.27;
varnoise = s^2;
signal =3.0*sin(2*pi*8*100*t) + 5*cos(2*pi*5*100*t) + 0.27*randn(size(t));
%noise
noise = s*randn(size(signal));
%noisy signal
noisySignal = signal + noise;
SNR = snr(noisySignal) %Calculation of SNR using snr function
defSNR = 10*log10(powfund/varnoise) %Calculation of SNR following the definition
