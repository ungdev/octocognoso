% 2014-04-26
% Traitement du signal
% TD3
% Benjamin Derville

% Convolution cyclique sans zero padding !
Ng = 128;
Nx = 256;
Min = 2;
Max = Nx + Ng;

g = hanning(Ng);
x = bartlett(Nx);

x = [x; zeros(Ng-1,1)];
x = x(1:256);
g = [g; zeros(Nx-1,1)];
g = g(1:256);

% on fait une convolution en temporel
yct = conv(x',g'); % size(yct) => 511 (= 256 *2 -1)
yct = yct(1:Max-1);
max(size(yct))

% on fait une multiplication en freq
fx = fft(x);
fg = fft(g);
fy = fx .* fg;
ycyc = abs(fft(fy));



clf;
figure(1);

subplot(411);
plot([0:Nx-1],g);
axis([0,Nx-1,0,max(g)]);
title('hanning sans padding');

subplot(412);
plot([0:Nx-1],x);
axis([0,Nx-1,0,max(x)]);
title('bartlett sans padding');

subplot(413);
plot([0:Nx-1],ycyc);
axis([0,Nx-1,0,max(ycyc)]);
title('Convolution via multiplication des espaces freq (sans zero padding)');

subplot(414);
%plot([0:Nx+Ng-2],yct); % Ca marche car le zero padding est necessaire que pour le fft
plot([0:max(size(yct))-1],yct);
title('convolution temporel (sans zero padding)');
axis([0,max(size(yct))-1,0,max(yct)]);
