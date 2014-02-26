% 2013-04-05
% Géolocalisation
% TP1 - Exercice 1
% Youenn Piolet - Shuwen Ni

clear all
clc

%% Constantes et mesures
RT=6378;    % Rayon de la terre

prec=10^-1; % Précision attendue

% Sats
x1=17000;
y1=18000;
x2=15000;
y2=19000;
x3=12000;
y3=18500;

X=[x1;x2;x3];
Y=[y1;y2;y3];


% Récepteur
xr=RT*cos(pi/6);
yr=RT*sin(pi/6);

biais=500; % Biais d'horloge initial

% Init Matrices colonnes
D=zeros(3,1);
R=D;
C=D;
B0=D;

%% Calculer r1, r2, r3
for i=1:1:3
    % di = sqrt((xi - xr)^2 + (yi - yr)^2) 
    D(i) = sqrt((X(i) - xr)^2 + (Y(i) - yr)^2);
    
    % ri = di + bC
    R(i) = D(i) + biais;
end

% Calcul de X initial
X = [xr;yr;0]; 

% Calculer A et Vecteur bo
A=[-2*X -2*Y 2*R];

for i=1:1:3
    C(i) = X(i)^2 + Y(i)^2 + RT^2;
    B0(i)= R(i)^2 - C(i);
end

iter=0;         % Nombre d'itérations
Xprec=X/10000;  % Valeur arbitraire d'entrée

while (norm(X-Xprec,2) > prec);
    Xprec=X;
    B1=[Xprec(3)^2;Xprec(3)^2;Xprec(3)^2];
    X = inv(A) * (B0 + B1);
    
    % Affichages (debug)
    DIFFX=[X Xprec]
    NORMS=[norm(X,2) norm(Xprec,2)]
    
    iter=iter+1;    % Compteur d'itérations
end
%print('------ FIN ------');
NORMS
X
iter
