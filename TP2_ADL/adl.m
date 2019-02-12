function [w,b] = adl(X,Y)

    Xplus = X(Y == 1, :);
    Xmoins = X(Y == -1 , :);
    
    MuPlus = mean(Xplus);
    MuMoins = mean(Xmoins);
    
end
