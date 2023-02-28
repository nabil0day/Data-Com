>> % Input audio signal
[x, fs] = audioread('C:\Users\AIUB\Downloads\OEL.mp3');

% Sampler
fs_new = 8000;
x_resampled = resample(x, fs_new, fs);

% Quantization
bits = 8;
levels = 2^bits;
x_quantized = round((levels-1)*x_resampled)/(levels-1);

% Plot original and quantized signals
t = (0:length(x)-1)/fs;
t_resampled = (0:length(x_resampled)-1)/fs_new;
t_quantized = (0:length(x_quantized)-1)/fs_new;
subplot(3,1,1)
plot(t, x)
xlabel('Time (s)')
ylabel('Amplitude')
title('Original signal')
subplot(3,1,2)
plot(t_resampled, x_resampled)
xlabel('Time (s)')
ylabel('Amplitude')
title('Resampled signal')
subplot(3,1,3)
plot(t_quantized, x_quantized)
xlabel('Time (s)')
ylabel('Amplitude')
title('Quantized signal')
