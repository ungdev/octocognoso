% 2014-04-26
% Traitement du signal
% TD3
% Benjamin Derville

% Convolution cyclique avec zero padding
%% voir 'http://www.dspguide.com/ch9/3.htm'


Ng = 128;
Nx = 256;
Min = 2;
Max = Nx + Ng;

g = hanning(Ng); % 128 valeurs
x = bartlett(Nx); % 256 valeurs

x = [x; zeros(Ng-1,1)];
g = [g; zeros(Nx-1,1)];


% on fait une convolution en temporel
yct = conv(x',g');
yct = yct(1:Max-1);


% on fait une multiplication en freq
fx = fft(x);
fg = fft(g);
fy = fx .* fg;
ycyc = abs(fft(fy));
size(ycyc) % 383 = 128 + 256 - 1 (l'addition du nbr de valeur possitive)

clf;
figure(1);
subplot(411);
plot([0:Nx+Ng-2],g);
title('hanning avec padding');
axis([0,Nx+Ng-2,0,max(g)]);

subplot(412);
plot([0:Nx+Ng-2],x);
title('bartlett avec padding');
axis([0,Nx+Ng-2,0,max(x)]);

subplot(413);
plot([0:Nx+Ng-2],ycyc);
title('Convolution via multiplication des espaces freq');
axis([0,Nx+Ng,0,max(ycyc)]);

subplot(414);
plot([0:Nx+Ng-2],yct);
title('convolution temporel');
axis([0,Nx+Ng,0,max(yct)]);
