%Questão 1:

grau = input('Digite o grau do modelo de regressão desejado: ');
    switch (grau)
        case 2
            % Regressão Polinomial de Grau 2.
            X = ones (2250,3);
            Y = ones (2250,1);
            i=1;
            while i<=2250
                X(2250+i)= Vel(i);
                X(4500+i) = Vel(i)^2;
                Y(i)= Pot(i);
                i = i+1;
            end
            % Encontrar o vetor de coeficientes Beta.
                Beta = inv(((X.')*X)) * ((X.')*Y);
            % Plotando o gráfico:
                x = 0:0.2:15;
                Poli2 = Beta(1) + Beta(2)*x + Beta(3)*(x.^2);
                plot (x, Poli2, 'r');
                hold on;
                plot (Vel, Pot, '.');
                grid on;
                
             %Avaliando a qualidade do modelo pela métrica R2:
                ymed = sum(Y)/ length(Y);
                i=1;
                while i<=length (Y);
                yest(i) = Beta(1) + Beta(2)*(Vel(i)) + Beta(3)*(Vel(i).^2);
                SQe(i) = (Y(i)-yest(i))^2;
                Syy(i) = (Y(i)-ymed)^2;
                i=i+1;
                end
    
                R2(grau-1)= 1-((sum(SQe)/sum(Syy)));
                
        %Avaliando a qualidade do modelo pela métrica R2 Ajustada:
                n = length (Y);
               p = length (Beta);
              
              R2aj (grau-1) = 1-((sum(SQe)/(n-p))/(sum(Syy)/(n-1)));

                n = length (Y);
                p = length (Beta);
              
                R2aj (grau-1) = 1-((sum(SQe)/(n-p))/(sum(Syy)/(n-1)));
          
        case 3
        % Regressão Polinomial de Grau 3.
            X = ones (2250,4);
            Y = ones (2250,1);
            i=1;
            while i<=2250
                X(2250+i)= Vel(i);
                X(4500+i) = Vel(i)^2;
                X(6750+i) = Vel(i)^3;
                Y(i)= Pot(i);
                i = i+1;
            end
            % Encontrar o vetor de coeficientes Beta.
                Beta = inv(((X.')*X)) * ((X.')*Y);
            % Plotando o gráfico:
                x = 0:0.2:15;
                Poli3 = Beta(1) + Beta(2)*x + Beta(3)*(x.^2) + Beta(4)*(x.^3);
                plot (x, Poli3, 'g');
                hold on;
                plot (Vel, Pot, '.');
                grid on;
                
             %Avaliando a qualidade do modelo pela métrica R2:
                ymed = sum(Y)/ length(Y);
                i=1;
                while i<=length (Y);
                yest(i) = Beta(1) + Beta(2)*(Vel(i)) + Beta(3)*(Vel(i).^2) + Beta(4)*(Vel(i).^3);
                SQe(i) = (Y(i)-yest(i))^2;
                Syy(i) = (Y(i)-ymed)^2;
                i=i+1;
                end
    
                R2(grau-1)= 1-((sum(SQe)/sum(Syy)));                

            %Avaliando a quadlidade do modelo pela métrica R2 Ajustada:
                n = length (Y);
                p = length (Beta);
              
                R2aj (grau-1) = 1-((sum(SQe)/(n-p))/(sum(Syy)/(n-1)));
                
        case 4
        % Regressão Polinomial de Grau 4.
            X = ones (2250,5);
            Y = ones (2250,1);
            i=1;
            while i<=2250
                X(2250+i)= Vel(i);
                X(4500+i) = Vel(i)^2;
                X(6750+i) = Vel(i)^3;
                X(9000+i) = Vel(i)^4;
                Y(i)= Pot(i);
                i = i+1;
            end
            
            % Encontrar o vetor de coeficientes Beta.
                Beta = inv(((X.')*X)) * ((X.')*Y);
                
            % Plotando o gráfico:
                x = 0:0.2:15;
                Poli4 = Beta(1) + Beta(2)*x + Beta(3)*(x.^2) + Beta(4)*(x.^3) + Beta(5)*(x.^4);
                plot (x, Poli4, 'b');
                hold on;
                plot (Vel, Pot, '.');
                grid on;
                
             %Avaliando a qualidade do modelo pela métrica R2:
                ymed = sum(Y)/ length(Y);
                i=1;
                while i<=length (Y);
                yest(i) = Beta(1) + Beta(2)*(Vel(i)) + Beta(3)*(Vel(i).^2) + Beta(4)*(Vel(i).^3) + Beta(5)*(Vel(i).^4);
                SQe(i) = (Y(i)-yest(i))^2;
                Syy(i) = (Y(i)-ymed)^2;
                i=i+1;
                end
    
                R2(grau-1)= 1-((sum(SQe)/sum(Syy)));
                
            %Avaliando a quadlidade do modelo pela métrica R2 Ajustada:
                n = length (Y);
                p = length (Beta);
              
                R2aj (grau-1) = 1-((sum(SQe)/(n-p))/(sum(Syy)/(n-1)));  
                
        case 5 
            % Regressão Polinomial de Grau 3.
            X = ones (2250,6);
            Y = ones (2250,1);
            i=1;
            while i<=2250
                X(2250+i)= Vel(i);
                X(4500+i) = Vel(i)^2;
                X(6750+i) = Vel(i)^3;
                X(9000+i) = Vel(i)^4;
                X(11250+i) = Vel(i)^5;
                Y(i)= Pot(i);
                i = i+1;
            end
            
            % Encontrar o vetor de coeficientes Beta.
                Beta = inv(((X.')*X)) * ((X.')*Y);
                
            % Plotando o gráfico:
                x = 0:0.2:15;
                Poli4 = Beta(1) +  Beta(2)*x + Beta(3)*(x.^2) + Beta(4)*(x.^3) + Beta(5)*(x.^4);
                plot (x, Poli4, 'y');
                hold on;
                plot (Vel, Pot, '.');
                grid on;
                
            %Avaliando a qualidade do modelo pela métrica R2:
                ymed = sum(Y)/ length(Y);
                i=1;
                while i<=length (Y);
                yest(i) = Beta(1) + Beta(2)*(Vel(i)) + Beta(3)*(Vel(i).^2) + Beta(4)*(Vel(i).^3) + Beta(5)*(Vel(i).^4) + Beta(6)*(Vel(i).^5);    
                SQe(i) =  (Y(i)-yest(i))^2;
                Syy(i) = (Y(i)-ymed)^2;
                i=i+1;
                end
    
                R2(grau-1)= 1-((sum(SQe)/sum(Syy)));

            %Avaliando a quadlidade do modelo pela métrica R2 Ajustada:
                n = length (Y);
                p = length (Beta);
              
                R2aj (grau-1) = 1-((sum(SQe)/(n-p))/(sum(Syy)/(n-1)));
              
        otherwise
            disp ('Este script só permite regressões de graus 2, 3, 4 e 5. Digite uma opção válida.')
            
    end