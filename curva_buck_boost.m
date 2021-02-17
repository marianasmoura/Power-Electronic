% CONVERSOR BUCK-BOOST
clc
close all
clear all

%% MODO DESCONTÍNUO
n = 0:0.01:25/36;
m = 0.2;

for i= 1:70
D(i) = m/sqrt(1/n(i));
end
plot(n,D,'g');

hold on
clear('D','m','n');
n = 0:0.01:4/9;
m = 0.5;
for i= 1:45
D(i) = m/sqrt(1/n(i));
end
plot(n,D,'b');
hold on

clear('D','m','n');
n = 0:0.01:1/4;
m = 1;
for i= 1:26
D(i) = m/sqrt(1/n(i));
end
plot(n,D,'r');

hold on
clear('D','m','n');
n = 0:0.01:1/9;
m = 2;
for i= 1:12
D(i) = m/sqrt(1/n(i));
end
plot(n,D,'m');
hold on

%% MODO FRONTEIRA
clear('D','n');
D = 0:0.01:0.99;
for i = 1:100
mm(i) = (1-D(i)).^2;
end
plot(mm,D,'--c');
hold on

%% MODO CONTÍNUO
clear('D','m','g');
g = 25/36:0.01:2;
for i= 1:131
m(i) = 0.2;
D(i) = m(i)/(1+m(i));
end
plot(g,D,'g');
hold on
clear('D','m','g');
g = 4/9:0.01:2;
for i= 1:156
m(i) = 0.5;
D(i) = m(i)/(1+m(i));
end
plot(g,D,'b');
hold on
clear('D','m','g');
g = 1/4:0.01:2;
for i= 1:176
m(i) = 1;
D(i) = m(i)/(1+m(i));
end
plot(g,D,'r');

hold on
clear('D','m','g');
g = 1/9:0.01:2;
for i= 1:189
m(i) = 2;
D(i) = m(i)/(1+m(i));
end
plot(g,D,'m');

title('Curva Característica do ganho para os três modos de condução');
xlabel('Io/Io_{max}')
ylabel('D')
text(1.4,0.7,'Vo/E = 2');
text(1.4,0.55,'Vo/E = 1');
text(1.4,0.37,'Vo/E = 0.5');
text(1.4,0.2,'Vo/E = 0.2');




