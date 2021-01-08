%commmonErrors Exercise

%The script below reads in a microscopy image and counts the circles
%automatically. The script contains three errors. See if you can identify
%them all before running the script. If not, run the script and fix the
%errors as they are identified by the error messages in the command window.

%If you do not know what a function does or the correct syntax to use with
%a function, type help followed by the function name in the Command Window
%for more information.


clear all
close all


%Read in image file and display it
yeastCellImageOriginal = imread('YeastCells.jpg');

figure(1)
imshow(yeastCellImageOriginal)
title('Fluorescence Microscopy - Yeast Cell Membranes')


%Convert image to Black and White, Threshold, and display it
yeastCellsBWImage = rgb2gray(yeastCellImageOriginal);

figure(2)
imshow(yeastCellsBWImage)
title('Black and White Image - Yeast Cell Membranes')



%Set the approximate radius and count the circles in the image, then use
%the imfindcircles function to automatically detect the circles.
minRadius = 50;
maxRadius = 120;
sensitivityFactor = 0.95;
[circleCentres, circleRadii] = imfindcircles(yeastCellsBWImage, [minRadius, maxRadius], 'Method', 'TwoStage', 'ObjectPolarity', 'bright', 'Sensitivity', sensitivityFactor);



%Check that we have found some circles and if so, display the circles on
%the image, otherwise display an error message

noCirclesFlag = isempty(circleCentres); %isempty(X) returns 1 if there is nothing in the variable X

if noCirclesFlag == 1
    disp('No circles were found. Try adjusting the circle finding parameters!')
    
else
    numberOfCircles = length(circleRadii);
    titleString = ['Image of yeast with approximately ', num2str(numberOfCircles), ' cells in focus'];
        
    figure(3)
    imshow(yeastCellsBWImage);
    viscircles(circleCentres, circleRadii);     %Visualise tthe circles
    title(titleString)
end


%Now we want to counts the number of small, medium and large cells
%First we initialise our counter variables to 0
numSmallCircles = 0;
numMediumCircles = 0;
numLargeCircles = 0;

%Then we run a for loop to count them based on radius size
%Note: there is a faster way to do this without using for loops. Try and
%find it if you have time!
for n = 1:length(circleRadii)    
    
    if circleRadii(n) <= 60
        numSmallCircles = numSmallCircles + 1;
    elseif circleRadii(n) > 60 && circleRadii(n) <= 80
        numMediumCircles = numMediumCircles + 1;
    elseif circleRadii(n) > 80
        numLargeCircles = numLargeCircles + 1;
    else
        disp('Something seriously strange is going on with the radii or the limits');
    end
        
end


disp(['Number of small cells is: ', num2str(numSmallCircles)])
disp(['Number of medium cells is: ', num2str(numMediumCircles)])
disp(['Number of large cells is: ', num2str(numLargeCircles)])


%Display a final image, colour version, with cell count
cellCountTitleString = ['Yeast with approximately ', num2str(numSmallCircles), ' small cells, ', num2str(numMediumCircles), ' medium cells, and ', num2str(numLargeCircles), ' large cells'];

figure(4)
imshow(yeastCellImageOriginal)
viscircles(circleCentres, circleRadii);
title(cellCountTitleString)




    
    
    
    
    
    
