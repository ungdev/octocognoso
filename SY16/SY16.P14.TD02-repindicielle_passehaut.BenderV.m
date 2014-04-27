% 2014-04-26
% Traitement du signal
% TD2
% Benjamin Derville

% % Réponse indicielle passe haut

E=1;
RsL=1;
Te=0.01;
t=0:Te:20;
f=0:Te:5;

y=E*exp(-t/RsL);

figure(1);
plot(t,y,'b'); 
title('Reponse indicielle trouve a la main');
legend('Signal y(t) = U_L');

% filtre trouve 
%% ca na rien a voir avec le indicielle ici ?!?
Ha = (2*j*pi*f)./(RsL*ones(size(f))+2*j*pi*f);

figure(2);
plot(f,abs(Ha));
title('Reponse absolue du filtre');
legend('passe haut');

figure(3);
semilogx(f,20*log10(abs(Ha)));
title('Reponse log absolue du filtre');
legend('passe haut');