close all;
clear all;

% PARAMS
Fs = 1000;            % Sampling frequency                    
T = 1/Fs;             % Sampling period       
L = 1500;             % Length of signal
t = (0:L-1)*T;        % Time vector

% SIGNAL
S = 0.7*sin(2*pi*50*t) + sin(2*pi*120*t);

% FINAL SIGNAL
%X = S + 2*randn(size(t));
X = S;

% PLOT TIME DOMAIN
figure(1)
plot(1000*t(1:50),X(1:50))
title('Signal Corrupted with Zero-Mean Random Noise')
xlabel('t (milliseconds)')
ylabel('X(t)')

% CALCULATE FFT
Y = fft(X);

P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

f = Fs*(0:(L/2))/L;

% PLOT FREQ DOMAIN
figure(2)
plot(f,P1) 
title('Single-Sided Amplitude Spectrum of X(t)')
xlabel('f (Hz)')
ylabel('|P1(f)|')