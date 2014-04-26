% 2014-04-26
% Traitement du signal
% TD2
% Benjamin Derville

E=1;
RsL=1;
Te=0.01;
t=0:Te:20;

alpha = 1/(1+RsL*Te);

xd = ones(size(t));
yd = ones(size(t));
yd(1) = alpha;

for i=2:length(t);
    yd(i) = alpha*(yd(i-1)+xd(i)-xd(i-1));
end;


figure(1);
plot(t,yd);
title('representation du filtre passe haut par iteration');
legend('Signal y(t) = U_L');