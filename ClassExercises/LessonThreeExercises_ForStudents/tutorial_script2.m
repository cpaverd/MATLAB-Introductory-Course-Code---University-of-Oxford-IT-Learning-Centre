%Graphics script for Ex 13
%Catherine Paverd



clc
clear
close all

x = 1:1:20;
y = rand(1,20);
z = 0.1:0.1:2.0;


figure(1)

fig1 = plot(x,y)
hold on
fig2 = plot(x,z)
hold on
fig3 = plot(x, z+(y./5))


