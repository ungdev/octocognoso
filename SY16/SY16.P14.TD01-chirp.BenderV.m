% 2014-04-26
% Traitement du signal
% TD1
% Benjamin Derville

E=1;
RC=1;
Te=0.01;
t=0:Te:30;

axis([0,30,-0.1,1.1]);
grid;
beta=1/(1+RC/Te);
alpha=(RC/Te)*beta;


x = sin((2*pi*t.^2)/250);
figure(1);
plot(t,x,'r');
title('chirp :  sin((2*pi*t.^2)/250)');


%% On écrit le probleme est on trouve les solutions de façon iterative. (par Ben)
yd = zeros(size(t));
for k = 2:length(t);
	yd(k) = ( x(k-1) - (1 - RC/Te) * yd(k-1) ) * (Te/RC);
end;

hold on;
plot(t,yd,'b');
hold off;

legend('signal (chirp) emis', 'reponse du signal (trouve iterativement)');
