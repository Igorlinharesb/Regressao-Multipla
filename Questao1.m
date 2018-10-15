% Universidade Federal do Cear�
% Intelig�ncia Computacional - 2018.1
% Prof. Jarbas Joaci
% 374873 - Francisco Igor Felicio Linhares
%Quest�o 1: Regress�o Polinomial de graus 2 a 5.

%Limpa o ambiente de trabalho
clc;
clear;
close all;
%Carrega base de dados
load aerogerador.dat; 
V = aerogerador (:,1);
P = aerogerador (:,2);
grau = input ('Digite o grau do modelo de regress�o desejado: ');
[Beta] = CalculaBeta(grau, aerogerador); 
    switch (grau)
        case 2
            % Gera o Polin�mio:
                x = 0:0.2:15;
                Poli = Beta(1) + Beta(2)*x + Beta(3)*(x.^2);
            % Calculando os valores para a Pot�ncia estimada
                i=1;
                while i<=length (P);
                yest(i) = Beta(1) + Beta(2)*(V(i)) + Beta(3)*(V(i).^2);
                i=i+1;
                end
        case 3 % Regress�o Polinomial de Grau 3.
            % Gerando o Polin�mio
                x = 0:0.2:15;
                Poli = Beta(1) + Beta(2)*x + Beta(3)*(x.^2) + Beta(4)*(x.^3);                
            % Calculando os valores para a Pot�ncia estimada
                i=1;
                while i<=length (P);
                yest(i) = Beta(1) + Beta(2)*(V(i)) + Beta(3)*(V(i).^2) + Beta(4)*(V(i).^3);
                i=i+1;
                end
        case 4 % Regress�o Polinomial de Grau 4.
            % Gerando o Polin�mio:
                x = 0:0.2:15;
                Poli = Beta(1) + Beta(2)*x + Beta(3)*(x.^2) + Beta(4)*(x.^3) + Beta(5)*(x.^4);
            % Calculando os valores para a Pot�ncia estimada
                i=1;
                while i<=length (P);
                yest(i) = Beta(1) + Beta(2)*(V(i)) + Beta(3)*(V(i).^2) + Beta(4)*(V(i).^3) + Beta(5)*(V(i).^4);
                i=i+1;
                end
        case 5 % Regress�o Polinomial de Grau 3.                
            % Gerando o Polin�mio:
                x = 0:0.2:15;
                Poli = Beta(1) +  Beta(2)*x + Beta(3)*(x.^2) + Beta(4)*(x.^3) + Beta(5)*(x.^4);
            % Calculando os valores para a Pot�ncia estimada
                i=1;
                while i<=length (P);
                yest(i) = Beta(1) + Beta(2)*(V(i)) + Beta(3)*(V(i).^2) + Beta(4)*(V(i).^3) + Beta(5)*(V(i).^4) + Beta(6)*(V(i).^5);
                i=i+1;
                end            
        otherwise
            disp ('Este script s� permite regress�es de graus 2, 3, 4 e 5. Digite uma op��o v�lida.')     
    end
   
    ymed = sum(P)/length(P);
    SQe = (P-(yest')).^2;
    Syy = (P-ymed).^2;
    %Avaliando a qualidade do modelo pela m�trica R2
    R2= 1-((sum(SQe)/sum(Syy)));
    %Avaliando a quadlidade do modelo pela m�trica R2 Ajustada
    R2aj = 1-((sum(SQe)/(length(P) - length (Beta)))/(sum(Syy)/(length(P)-1)));
    %Plotando o gr�fico de dispers�o
    plot (x, Poli, 'r');
    hold on;
    plot (V, P, '.');
    grid on;