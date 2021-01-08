%Exercise 15 Code
%Catherine Paverd
%Nov 2016

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

peppers = imread('peppers.png','png');  %Read in peppers image
[m,n,z] = size(peppers);

%Name the figure with the handle h
h = figure('Units','pixels','Position',[100 100 n m],'Color','k');
image(peppers);
set(gca,'Position',[0 0 1 1]);  %Set fig position
axis off
annotation('textarrow',[.2,.3],[.8,.6],'String','Chili','Color','w'); %Add annotation
set(gcf,'InvertHardcopy','off')

%Explore different print options
print(h,'-dmeta')
print(h,'-dps','PepperFigBW.ps')
print(h,'-dpsc','PepperFig.ps')
print(h,'-depsc','PepperFig.eps')
print(h,'-dpdf','PepperFig.pdf')




