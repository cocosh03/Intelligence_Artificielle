
% Générer les données aléatoires dans le plan 


X1 = 5 + 2 * randn(100,2); 
X2 = -5 + 2 * randn(100,2); 
X = [X1;X2];
Y = [ones(100,1); -ones(100,1)];

figure;
hold on;
plot(X1(:,1), X1(:,2), 'ob');
plot(X2(:,1), X2(:,2), '*r');


% Apprentissage : 
[w,b] = adl(X, Y); 

% Prédictions pour couvrir le plan et voir la frontière entre les classes : 
Xtest = 20 * rand(1000,2) - 10;

Yhat = adlpred(Xtest, w, b);


plot(Xtest(Yhat==1,1), Xtest(Yhat==1,2), '.b');
plot(Xtest(Yhat==-1,1), Xtest(Yhat==-1,2), '.r');

