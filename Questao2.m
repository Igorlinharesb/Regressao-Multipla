%Questão 2:
D =[122 139 0.115;
    114 126 0.120;
    086 090 0.105;
    134 144 0.090;
    146 163 0.100;
    107 136 0.120;
    068 061 0.105;
    117 062 0.080;
    071 041 0.100;
    098 120 0.115];

% Inicializando os vetores das variáveis de entrada e saída:
X1 = D(:,1);
X2 = D(:,2);
Y = D(:, 3);

%1 - Calculando os coeficientes de regressão:
    X= ones (10,3);
    i=1;
    while i<=10          %Criando a Matriz de entrada X:
        X(i) = 1;
        X(10+i) = X1(i); 
        X(20+i) = X2(i);
        i=i+1;
    end
    
%2 - Encontrando o vetor de coeficientes Beta:

    Beta = inv(((X.')*X)) * ((X.')*Y);
    
%3 - Plotando o Gráfico:

    plot3 (X1, X2, Y, '*');
    hold on;
    grid on;
    [X1,X2] = meshgrid (30:0.5:180, 30:0.5:180);
    yest = Beta(1) + Beta(2).*(X1) + Beta(3).*(X2);
    mesh (X1,X2, yest);

%4 - Calculando o Erro:
%Avaliando a qualidade do modelo pela métrica R2:
                ymed = sum(Y)/ length(Y);
                yest = ones(length(Y),1);
                SQe = ones (length (Y),1);
                Syy = ones (length (Y),1);
                i=1;
                while i<=length (Y);
                yest(i) = Beta(1) + Beta(2)*(X1(i)) + Beta(3)*(X2(i));
                SQe(i) = (Y(i)-yest(i))^2;
                Syy(i) = (Y(i)-ymed)^2;
                i=i+1;
                end
                R2= 1-((sum(SQe)/sum(Syy)));