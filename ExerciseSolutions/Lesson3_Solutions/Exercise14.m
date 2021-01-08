%Graphics script for Ex 14
%Catherine Paverd
%2017


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc
clear
close all

x = 1:1:20;
y = rand(1,20);
z = 0.1:0.1:2.0;


figure(1)

fig1 = plot(x,y,'o')
hold on
pause(1)            %Pause in seconds
fig2 = plot(x,z,'+r')
hold on
pause(1)
fig3 = plot(x, z+(y./5), '*b')
hold on 
pause(1)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Task 2
fig = gcf; % current figure handle
set(gcf, 'Color', [1 1 1]); %can also say set(fig, 'Color', [1 1 1]);
pause(1)
set(gcf, 'Position', [200 100, 700, 600]) 
get(0, 'ScreenSize')    %Current screen resolution
pause(1)
set(gcf, 'Resize', 'off')


%Task 3
ax = get(gca)
set(gca, 'Box', 'off');
pause(1)
set(gca, 'XLim', [0 10]);
pause(1)
set(gca, 'XDir', 'reverse');
pause(1)
set(gca, 'YTickLabel', [1:11]);     %Changed to 1 - 11 not 1 - 9 as stated in handbook


%Task 4
handles = get(gca, 'Children')

get(handles(1))     %last figure: fig3
get(handles(2))     %fig 2
get(handles(3))     %fig 1

set(handles(1), 'MarkerSize', 20)
set(handles(2), 'MarkerSize', 10)
set(handles(3), 'MarkerSize', 5)

legend('Amplified Random Noise', 'Baseline Data', 'Baseline with noise')

pause(1)
set(handles(3), 'Visible', 'off')


