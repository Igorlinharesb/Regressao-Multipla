function [ Beta ] = CalculaBeta(grau, dados)
    
    X = ones (length(dados), (grau+1));
    Y = dados(:,2);
    
    for i=1:(grau)
       X (:,i+1) = dados (:,1).^i;
    end
    
    Beta = ((X.')*X)\((X.')*Y);
    
end

