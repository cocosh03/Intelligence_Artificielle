function [w,b] = adl(X,Y)

    Xplus = X(Y == 1, :);
    Xmoins = X(Y == -1 , :);
    
    MuPlus = mean(Xplus)';
    MuMoins = mean(Xmoins)';
        
    Mplus = size(Xplus, 1);
    Mmoins = size(Xmoins, 1);
    
    Cplus = cov(Xplus);
    Cmoins = cov(Xmoins);
    
    C = ((Mplus - 1)*Cplus + (Mmoins -1)*Cmoins) / ((Mplus -1) + (Mmoins - 1));
    
    w = C\(MuPlus - MuMoins);
    b = log(Mplus/Mmoins) + ((MuMoins+MuPlus)'*(-w))/2;
    
end
