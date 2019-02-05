%
% Fonction de prédiction Y = polypred(X, w)
%
%	w 	: paramètres du modèle polynomial f issus de polyreg
%	X 	: vecteur de taille N contenant les N valeurs de x où évaluer le polynome f(x)
%	Y 	: valeurs de polynome f(X) 
% 
function Y = polypred(X, w) 

    D = length(w)-1;
    
    PHItest = zeros(size(X,1), D+1);
    for k = 1:D
        PHItest(:,k) = X.^k; 
    end
    Y = PHItest*w;
end
