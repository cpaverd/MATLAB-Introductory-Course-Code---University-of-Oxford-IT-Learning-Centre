%Exercise 17
%Catherine Paverd
%2018

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc
clear all
close all

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Task 1

[numAnPop, txtAnPop, rawAnPop] = xlsread('UK Demographics.xlsx',1)
[numAgePop, txtAgePop, rawAgePop] = xlsread('UK Demographics.xlsx',2)

load('EuropeanUnionDemographics')


for i = 3:12
    yearStr = txtAnPop{i,1};
    yearNumStart = str2num(yearStr(1:4));        %Convert first four char of the year col to a number
    yearNumEnd = str2num(yearStr(end-3:end));    %Convert the second year (last four char) to a number
    
    avgPopYear(i-2) = (yearNumStart+yearNumEnd)/2;   %I am making a vecotr of the middle year here for demonstration purposes
    startYears(i-2) = yearNumStart;
    endYears(i-2) = yearNumEnd;
end

%Task2

figure(1)
plot(startYears, numAnPop(:,1),'o')             %Using start years here as that is what the data had
xlim([startYears(1), startYears(end)])          %You could also convert tick labels

%Showing an example of using tick labels instead of changing str to number
%NOTE: in Matlab 2016 you can use 'XLabelRotation' as an axis label
%property as well. This is not possible in releases prior to 2014b.
figure(2)
plot(numAnPop(:,1),'*r')
fig2 = gcf;
ax2 = gca;
set(fig2, 'Position', [200,200,1000,500])
set(ax2, 'XTickLabel', txtAnPop(3:end,1), 'FontSize', 8)



figure(3)
plot(numAgePop,'+g')
fig3 = gcf;
ax3 = gca;
set(fig3, 'Position', [600,50,1000,500])
set(ax3, 'XTick', [1:length(numAgePop)])    %Set number of ticks to number f datapoints
set(ax3, 'XTickLabel', txtAgePop(3:21,1), 'FontSize', 8) %Change tick labels
title('Population 2011 by age groups')


%%
%Task 3 - NOTE: I didn't create a new script here, just a new section
%Also, in case the time periods were in different years, I have
%demonstrated averaging per period rather than per year.
%If required, it would also work to interpolate the data using 
%a polynomial fit, and then look per year

changeOverTime = zeros(1, length(numAnPop)-1);    %Preallocate a vector of correct length
%populationChangeRate = zeros(2, (endYears(end-1)-startYears(1)) )

%Assuming this is per period

yearCount = startYears(1);  %Initial year counter


for k = 1:length(numAnPop)-1
    changeOverTime(k) = ((numAnPop(k+1) - numAnPop(k))/(numAnPop(k)))*100;
    
    yearCount = startYears(k);
    
end

populationChangeRate = [avgPopYear(1:end-1); changeOverTime]


ind = find(max(populationChangeRate(2,:)))      %Gets index of max change value. Could also be done using sort

highestRate = populationChangeRate(2,ind)   %Uses the index to get the greatest change and the
highestAvgChangeYear = populationChangeRate(1,ind)  %year period in which is occured








%
% while yearCount ~= endYears(k)
%     populationChangeRate(1,p) = yearCount
%     populationChangeRate(2,p) = changeOverTime(k)
%     yearCount = yearCount+1;
%     p = p+1
% end



%%
%Task 4


for i = 3:21
    ageStr = strsplit(txtAgePop{i,1}, '–')
    
    if(i == 21)             %Last age group: only contains one number
        firstAge = ageStr{1};
        ageStartYear = str2num(firstAge(1:2))
        ageStartYears(i-2) = ageStartYear;
        
    else                    %All other age groups
        ageStartYear = str2num(ageStr{1})
        ageEndYear = str2num(ageStr{2})
        ageStartYears(i-2) = ageStartYear;
        ageEndYears(i-2) = ageEndYear;
    end
    
    
    
end

ageStartYears
ageEndYears

%group ages in larger groups (can also do this manually but I want to
%demonstrate how to automate something like this as well)

numAgePop

newAgeGroupStart = ageStartYears(1:3:end)
newAgeGroupEnd = ageEndYears(3:3:end)

leftover = mod( length(numAgePop), 3)   %Get remainder once dividing by 3 (ie value is 0,1 or 2)
newValues = numAgePop(1:3:end-leftover)+numAgePop(2:3:end-leftover)+numAgePop(3:3:end-leftover);    %Add in groups of three

newValues(end+1) = sum(numAgePop(end-leftover+1:end))   %Add remaining age group

figure(5)
bar(newAgeGroupStart, newValues)    %You could also find average ages here and plot those instead
ax5 = gca;
xLabelsNew = [];

for t=1:length(newAgeGroupEnd)
t
  newLabel =  [num2str(newAgeGroupStart(t)),'-',num2str(newAgeGroupEnd(t))]
  xLabelsNew{t} = newLabel
end

xLabelsNew{end+1} =  strcat(num2str(newAgeGroupStart(end)), '+')
set(ax5, 'XTickLabel', xLabelsNew)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 
%%Task 5
numCountries = length(EUDemCellArray);
popDensity = [];

for j = 1:numCountries
    popDensity{j,1} = EUDemCellArray{j,1};
    popDensity{j,2} = EUDemCellArray{j,2}./EUDemCellArray{j,3};
end


[popDenSorted, ind] = sort([popDensity{:,2}], 'descend');
countrySorted = popDensity(ind,1);

disp(['The highest population density is in: ', countrySorted{1}])
disp(['The lowest population density is in: ', countrySorted{end}])



