%{
 Graficas de Distancias en distintas p-metricas en R^3
de un (x,y,z) al origen (0,0,0), tal que
d[(x,y,z), (0,0,0)] = r

Requiere: Symbolic Math Toolbox

Observaciones: Algunas graficas  ejemplifican errores
              por el tipo de datos tomados
%}


close all
clear 
clc    

syms x y z 

figure('Name','1-metrica en R^3');
eqn =  abs(x)+abs(y)+abs(z)-1;
fimplicit3(eqn,[-1 1])
title('|x| + |y| + |z| = 1')
xlabel('x')
ylabel('y')
zlabel('z')

figure('Name','1-metrica en R^3');
eqn =  abs(x)+abs(y)+abs(z)-2;
fimplicit3(eqn,[-3 3])
title('|x| + |y| + |z| = 2')
xlabel('x')
ylabel('y')
zlabel('z')

figure('Name','2-metrica en R^3');
eqn =  x^2 + y^2 + z^2 -1;
fimplicit3(eqn,[-1 1])
title('x^2 + y^2 + z^2 = 1')
xlabel('x')
ylabel('y')
zlabel('z')

figure('Name','3-metrica en R^3');
eqn =  abs(x)^3 + abs(y)^3 + abs(z)^3 -1;
fimplicit3(eqn,[-10 10])
title(' (|x|^3 + |y|^3 + |z|^3)^{1/3} = 1')
xlabel('x')
ylabel('y')
zlabel('z')

figure('Name','6-metrica en R^3');
eqn =  x^6 + y^6 + z^6 -1;
fimplicit3(eqn,[-2 2])
title('$\sqrt[6]{x^6 + y^6 + z^6} = 1 $', 'Interpreter','latex')
xlabel('x')
ylabel('y')
zlabel('z')

figure('Name','12-metrica en R^3');
eqn =  x^12 + y^12 + z^12 - 1;
fimplicit3(eqn,[-1 1])
title('$\sqrt[12]{x^{12} + y^{12} + z^{12}} = 1 $','Interpreter','latex')
xlabel('x')
ylabel('y')
zlabel('z')

% Note el erro, ¿Porque ocurre?
figure('Name','12-metrica en R^3');
eqn =   (x^3 + y^3 + z^3)^1 - 3^3;
fimplicit3(eqn,[-5 5])
title('$\sqrt[3]{x^3 + y^3 + z^3} = 3 $','Interpreter','latex')
xlabel('x')
ylabel('y')
zlabel('z')


figure('Name','3-metrica en R^3');
eqn = abs(x)^3 + abs(y)^3 + abs(z)^3 - 2^3;
fimplicit3(eqn,[-5 5])
title('$\sqrt[12]{x^3 + y^3 + z^3} = 2 $','Interpreter','latex')
xlabel('x')
ylabel('y')
zlabel('z')

% Problemas numericos con el calculo,al parecer es por ser r "grande"
figure('Name','9-metrica en R^3');
eqn = abs(x)^9 + abs(y)^9 + abs(z)^9 - 2^9;
fimplicit3(eqn,[-5.5 5.5])
title('$\sqrt[9]{x^9 + y^9 + z^9} = 2 $','Interpreter','latex')
xlabel('x')
ylabel('y')
zlabel('z')

% Problemas numericos con el calculo
figure('Name','9-metrica en R^3');
eqn = abs(x)^9 + abs(y)^9 + abs(z)^9 - 1.5^9;
fimplicit3(eqn,[-5.5 5.5])
title('$\sqrt[9]{x^9 + y^9 + z^9} = 1.5 $','Interpreter','latex')
xlabel('x')
ylabel('y')
zlabel('z')

% Problemas numericos con el calculo,al parecer es por ser r=3
% no sale la grafica. ¿Como se soluciona?
figure('Name','12-metrica en R^3');
eqn = abs(x)^12 + abs(y)^12 + abs(z)^12 - 3^12;
fimplicit3(eqn,[-5.5 5.5])
title('$\sqrt[12]{x^12 + y^12 + z^12} = 3 $','Interpreter','latex')
xlabel('x')
ylabel('y')
zlabel('z')
