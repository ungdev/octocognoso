% 2014-04-26
% Traitement du signal
% TD1
% Benjamin Derville

E=1;
RC=1;
Te=0.001;
t=0:Te:20;

%% La solution mathematique trouve a la main.
y=1-exp(-t/RC);

plot(t,y,'xb');
axis([0,20,-0.1,1.1]);
grid;


%% On écrit le probleme est on trouve les solutions de façon iterative. (par le prof)
beta=1/(1+RC/Te);
alpha=(RC/Te)*beta;

yd = zeros(size(t));
x = E*ones(size(t));
for k = 2:length(t);
    yd(k) = alpha * yd(k-1) + beta*x(k);
end;

hold on;
plot(t,yd,'.r')
hold off;

%% On écrit le probleme est on trouve les solutions de façon iterative. (par Ben)
for k = 2:length(t);
	yd(k) = ( x(k-1) - (1 - RC/Te) * yd(k-1) ) * (Te/RC);
end;

hold on;
plot(t, yd, '+g')
hold off;