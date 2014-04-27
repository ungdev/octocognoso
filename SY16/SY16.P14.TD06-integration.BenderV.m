% 2014-04-26
% Traitement du signal
% TD6
% Benjamin Derville

Te=1;
f=-0.5:0.001:0.5; % passer à 1.5 pour voir la périodicité
Lr=3;

% Filtre de transfert
filtrea =2*j*pi*f; % filtre analogique
filtrerect=(1-exp(-2*j*pi*f))/Te; % phi1
filtretrap=2/Te*(1-exp(-2*j*pi*f))./(1+exp(-2*j*pi*f)); % phi2

% Fonction de transfert
Ha=(Lr*filtrea)./(1+Lr*filtrea);
H1=(Lr*filtrerect)./(1+Lr*filtrerect);
H2=(Lr*filtretrap)./(1+Lr*filtretrap);


figure(1);
plot(f,abs(Ha),'k');
title('Representation des fonctions de transfert (analogique, rect, trapeze)');
hold on;
plot(f,abs(H1),'g');
plot(f,abs(H2),'r');
legend('Ha (analogique)','H1 (rect)', 'H2 (trap)');
axis([-0.5 0.5 0 1.1]);
hold off;


figure(2);
semilogx(f,20*log10(abs(Ha)),'k');
title('Representation des fonctions de transfert (analogique, rect, trapeze) en LOG !');
hold on;
semilogx(f,20*log10(abs(H1)),'g');
semilogx(f,20*log10(abs(H2)),'r');
legend('Ha (analogique)','H1 (rect)', 'H2 (trap)');
% axis([-0.5 0.5 -50 +3]);
hold off;
