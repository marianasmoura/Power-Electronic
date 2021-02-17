% Gráfico de ganho do conversor Buck
clc
clear all
close all
figure(1)
%% MODO DESCONTÍNUO
% m = V0/Vd;
% n = I0/Ilb_max;
n = 0:0.01:0.2;
m = 0.8;
D = m*sqrt(n/(1-m));
plot(n,D,'g');
hold on
m = 0.5;
n = 0:0.01:0.5;
D = m*sqrt(n/(1-m));
plot(n,D,'b');
hold on
m = 0.2;
n = 0:0.01:0.8;
D = m*sqrt(n/(1-m));
plot(n,D,'r');
hold on


%% MODO FRONTEIRA
g = 0:0.01:1;
D = 1 - g;
plot(g,D,'--c');
hold on


%% MODO CONTÍNUO
g = 0.2:0.01:1.2;
for i= 1:101
m(i) = 0.8;
D(i) = m(i);
end
plot(g,D,'g');

hold on
clear('g','D');
g = 0.5:0.01:1.2;
for i= 1:71
m(i) = 0.5;
D(i) = m(i);
end
plot(g,D,'b');

hold on
clear('g','D');
g = 0.8:0.01:1.2;
for i= 1:41
m(i) = 0.2;
D(i) = m(i);
end
plot(g,D,'r');

title('Curva Característica do ganho para os três modos de condução');
xlabel('Io/Io_{max}')
ylabel('D')
text(0.9,0.85,'Vo/E = 0.8');
text(0.9,0.55,'Vo/E = 0.5');
text(0.9,0.25,'Vo/E = 0.2');










