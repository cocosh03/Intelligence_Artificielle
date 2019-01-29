% 1)-----------------------------------------
M = 1000;
D = 5;
matX = 10*rand(M,D)-5;

% 2)-----------------------------------------
Wo = [1.2; -1.3; 0.5; 0.8; -2.3]; 
V = randn(M,1);
matY = matX*Wo+V;

% 3)-----------------------------------------
    %Solution analytique
%W = inv(matX'*matX)*matX'*matY; %A éviter
W = matX \ matY; % Résoud le problème des moindres carrés
NW =  norm(W);
NWo = norm(Wo);
Result = NW - NWo;
    %Erreur apprentissage
E = matY - matX*W;
Remp = mean(E.^2);

% 4)-----------------------------------------
