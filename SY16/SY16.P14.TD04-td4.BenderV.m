% 2014-04-26
% Traitement du signal
% TD4
% Benjamin Derville

% TD a part, pas utile pour le median. Très intéressant cela dit.
clf; 

N = 100;
f = 0:1/N:((N-1)/N); % freq, on sarrête à 1/2 car après le signal se répète
f = f/2;

Hd = [zeros(N/4,1);(0:N/10)'/(N/10);ones(N/4,1);(N/10:-1:0)'/(N/10);zeros(28,1)]; % vect col N valeurs
%Hd = Hd'

figure(1)
plot(f, Hd, '+');
title('Signal crée');
legend('Signal');


L = 20;
A = ones(N,1);
for i= 1:N;
    for j = 1:(L/2)+1;
        A(i,j) = 2*cos(2*pi*f(i)*j);
    end;
end;

A = [ones(N,1) A];
h = inv(A'*A)*A'*Hd;
hh = h(L/2+1:-1:2); % on prend le filtre positif, excluant 0, dans le sens inverse
h = [hh; h]; % on rajoute la partie negative

figure(2);
plot(h);
title('Filtre du signal precedent');
legend('Reponse du filtre');

% Pour améliorer, on fait du Zero Padding
h = [h; zeros(979, 1)];
Fh = fft(h);
figure(3);
plot(0:0.001:1, abs(Fh), 'r')


% On fixe un chirp (pour le fun, et pour s'assurer qu'on a bien un filtre)
% chirp : signal dont la freq augmente linéairement avec le temps
x = sin(2*pi*0.00025*[0:999].^2);
y = filter(h, 1, x);
figure(3)
plot(x);
hold on;
plot(y, 'g');
title('Reponse du filtre a un chirp');
legend('chirp','reponse du filtre (passe bande !')