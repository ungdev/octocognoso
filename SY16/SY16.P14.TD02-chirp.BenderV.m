% 2014-04-26
% Traitement du signal
% TD2
% Benjamin Derville

% Réponse du filtre passe haut au chirps
E=1;
RsL=1;
Te1=0.1;
t=0:Te:30;
f=0:Te:5;


x = sin((2*pi*t.^2)/50);

alpha = 1/(1+RsL*Te);

xd = ones(size(t));
yd = zeros(size(t));
yd(1) = 0;

for i=2:length(t);
    yd(i) = alpha*(yd(i-1)+x(i)-x(i-1));
end;

figure(1);
axis([0,30,-0.1,1.1]);
plot(t,x,'r');
hold on;
plot(t,yd,'b');
grid;
legend('chirp', 'reponse du filtre (numerique)')
hold off;
