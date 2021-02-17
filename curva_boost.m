% CONVERSOR BOOST
clc
close all
clear all

%% MODO DESCONTÍNUO
n = 0:0.01:81/256;
m = 4;
D = sqrt((4/27)*m*(m-1)*n);
plot(n,D,'g');
hold on

clear('D','m','n');
n = 0:0.01:27/32;
m = 2;
D = sqrt((4/27)*m*(m-1)*n);
plot(n,D,'b');

hold on
clear('D','m','n');
n = 0:0.01:1;
m = 1.5;
D = sqrt((4/27)*m*(m-1)*n);
plot(n,D,'r');
hold on

%% MODO FRONTEIRA
clear('D');
D = 0:0.01:0.99;
for i = 1:100
mm(i) = (27/4)*D(i)*(1-D(i)).^2;
end
plot(mm,D,'--c');
hold on

%% MODO CONTÍNUO
clear('D','m','g');
g = 81/256:0.01:2;
for i= 1:169
m(i) = 4;
D(i) = 1 - (1/m(i));
end
plot(g,D,'g');
hold on
clear('D','m','g');
g = 27/32:0.01:2;
for i= 1:116
m(i) = 2;
D(i) = 1 - (1/m(i));
end
plot(g,D,'b');
hold on
clear('D','m','b');
g = 1:0.01:2;
for i= 1:101
m(i) = 1.5;
D(i) = 1 - (1/m(i));
end
plot(g,D,'r');

title('Curva Característica do ganho para os três modos de condução');
xlabel('Io/Io_{max}')
ylabel('D')
text(1.4,0.8,'Vo/E = 4');
text(1.4,0.55,'Vo/E = 2');
text(1.4,0.37,'Vo/E = 1.5');


















