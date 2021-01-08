%Exercise16

%Catherine Paverd
%2018

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc
clear all
close all

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Task 1

smallMag = magic(5)
largeMag = magic(10)

save('magic5', 'smallMag');
save('magic10', 'largeMag');

%To clear and reload
clear all

load('magic5')
load('magic10')


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 
%Task 2
xlswrite('magic.xls', smallMag, 'magic5','C2');
xlswrite('magic.xls', largeMag, 'magic10','B3');

[status, sheets, format] = xlsfinfo('magic.xls')


magicData = xlsread('magic.xls',-1)     %Interactive read: you select the data


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 
%Task 3

fid = fopen('magic.bin', 'w+')
fwrite(fid, smallMag)
frewind(fid)
readMat = fread(fid, inf)
fclose(fid)

fidApp = fopen('magic.bin', 'a+')
fwrite(fidApp, largeMag)
frewind(fidApp)
readMatBoth = fread(fidApp, inf)
fclose(fidApp)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%






