%Code required for Exercise 14 - all other tasks on the GUI
%Catherine Paverd
%2017


peppers = imread('peppers.png','png');
[m,n,z] = size(peppers);
h = figure('Units','pixels','Position',[100 100 n m],'Color','k')
image(peppers);
set(gca,'Position',[0 0 1 1]);
axis off
annotation('textarrow',[.2,.3],[.8,.6],'String','Chili','Color','w');
set(gcf,'InvertHardcopy','off')

print(h,'-dmeta')
print(h,'-dps','PepperFigBW.ps')
print(h,'-dpsc','PepperFig.ps')

print(h,'-depsc','PepperFig.eps')
print(h,'-dpdf','PepperFig.pdf')