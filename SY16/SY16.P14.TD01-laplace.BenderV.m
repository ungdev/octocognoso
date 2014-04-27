% 2014-04-26
% Traitement du signal
% TD1
% Benjamin Derville

RC = 1;
f=0:0.01:5;

%% On fait le filtre, et on remplace w par 2*j*pi*f (fourier)
Ha = ones(size(f))./(ones(size(f))+2*1i*pi*f*RC);

figure(1);
plot(f,abs(Ha));
title('representation absolue du filtre');
legend('Passe Bas');

figure(2);
semilogx(f,20*log10(abs(Ha)));
title('representation logarithmique absolue du filtre');
legend('Passe Bas');

figure(3);
plot(f,atan(imag(Ha)./real(Ha)));
title('representation du dephasage : atan(imag(Ha)./real(Ha)) '); %% ?? Comment interpreter ceci ?
legend('Passe Bas');


figure(4);
semilogx(f,atan(imag(Ha)./real(Ha)));
title('representation logarithmique du dephasage : atan(imag(Ha)./real(Ha)) '); %% ?? Comment interpreter ceci ?
legend('Passe Bas');


%%% Est-ce quil y a vraiment ça dans cette partie ?
%% Hd = beta*ones(size(f))./(ones(size(f))-alpha*exp(-2*1i*pi*f*Te));
%% figure(5);
%% semilogx(f,20*log10(abs(Hd)),'r');
%% title('representation logarithmique absolue du filtre Hd'); %% ?? Comment interpreter ceci ?
%% legend('Passe Bas');


%% source code for a plot

%plot (x, sin (x));
%title ('sin(x) for x = -10:0.1:10');
%xlabel ('x');
%ylabel ('sin (x)');
%text (pi, 0.7, 'arbitrary text');
%legend ('sin (x)');