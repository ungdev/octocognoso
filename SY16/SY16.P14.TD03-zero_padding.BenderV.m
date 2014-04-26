% 2014-04-26
% Traitement du signal
% TD3
% Benjamin Derville

% Exemple de zero padding

clf;
figure(1);

%TF (non D)
f = 0:0.01:1;
XF = (1-exp(-2*j*pi.*f*N))./(1-exp(-2*j*pi*f));
plot(f,abs(XF),'b');

%TFD (sans zero padding)
N = 10;
x = ones(1, N);
fx = fft(x);
hold on;
plot([0:1/N:(N-1)/N],abs(fx),'g');
hold off;

%TFD (avec zero padding)
x = [x zeros(1,91)];
fxz = fft(x);
hold on;
M = length(x);
plot([0:1/M:(M-1)/M],abs(fxz),':r');
hold off;

legend('TF non D','TFD sans zero padding','TFD avec zero padding');