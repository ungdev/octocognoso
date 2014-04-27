% 2014-04-26
% Traitement du signal
% TD2
% Benjamin Derville

E=1;
RsL=1;
Te=0.2;
f=0:0.01:5;
t=0:Te:20;
alpha = 1/(1+RsL*Te);

%y=E*exp(-t/RsL);
% plot(t,y,'b');


Ha = (2*j*pi*f)./(RsL*ones(size(f))+2*j*pi*f);
Hd = alpha*(1 - exp(-2*j*pi*f*Te))./(1 - alpha * exp(-2*j*pi*f*Te));


figure(1);
plot(f,abs(Ha),'b');
hold on;
plot(f,abs(Hd),'r');
hold off;
title('representation du filtre passe haut (analogie vs numerique)');
legend('Ha', 'Hd');

figure(2);
semilogx(f,20*log10(abs(Ha)),'b');
%axis([0,5,-30,5]);
hold on;
semilogx(f,20*log10(abs(Hd)),'r');
hold off;
title('representation log du filtre passe haut (analogie vs numerique)');
legend('log(Ha)', 'log(Hd)');