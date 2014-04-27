% 2014-04-26
% Traitement du signal
% TD5
% Benjamin Derville

%% TD sur la stabilite : important et à revoir !

clf;
rho = 0.95;
theta = pi/4; % Max en 1/16
a1 = -2 * rho * cos(theta);
a2 = rho^2;
N = 1000;

% réponse impulsionnelle infinie
y = zeros(1,N);
% pour trouver ces resultats, on prend l equation et on rempli
y(1) = 1; 
y(2) = -a1;
for i = 3:N;
    y(i) = -a1 * y(i-1) - a2 * y(i-2);
end;

f = 0:1/N:(N-1)/N;
y2 = fft(y);

figure(1)
plot(y);
title('signal impulsionnelle infinie decroissant')

figure(2);
plot(y2);
title('reponse du filtre impulsionnelle numerique');

figure(3);
plot(abs(y2));
title('representation absolue de la reponse du filtre impulsionnelle numerique');