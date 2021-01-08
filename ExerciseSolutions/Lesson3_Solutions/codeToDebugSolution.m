%codeToDebug solution


%The error in this script was in the for loop, where the index was changed inside the loop.
%Matlab was able to reset the index to the correct value on each iteration, so it ran 
%the correct number of times, however the final length of diagonals was
%clearly incorrect.

%The solution is to change he name of the loop index or change the name of the variable in 
%which the calculated area is stored on each loop iteration. Do that now and see that it runs
%correctly 


%Ask user for an input on the number of shapes
numRect = input('Please Enter the number of Rectangles you want (between 5 and 10): ');
sizeOfShapes = zeros(2, numRect);

%Generate length and breadth for the circles

sizeOfShapes = abs(randn(2, numRect).*5);
disp('Your shapes have dimensions (row1 is length, row2 is width): ')
sizeOfShapes

totalLengthOfDiagonals = zeros(1, numRect);
lengthOfShape = 0;
breadthOfShape = 0;
shapeToCalculate = 0;
totalArea = 0;

%Calculate the area and display each shape separately
for shapeToCalculate = 1:numRect
      
 
   %Determine the area of the shapes
   lengthOfShape = sizeOfShapes(1,shapeToLookAt);
   breadthOfShape = sizeOfShapes(2,shapeToLookAt);
   shapeToCalculate = round(lengthOfShape*breadthOfShape);
   
   lengthofDiagonals = (lengthOfShape^2+breadthOfShape^2);
   totalArea = totalArea + shapeToCalculate;
   
   
   %Now we want to store the diagonals to determine the longest ones at the
   %end
   lengthOfDiagonals(1, shapeToCalculate) =  lengthofDiagonals;

end

sortedDiagonals = sort(lengthOfDiagonals);
longestDiag = sortedDiagonals(1);

disp(['You have ', num2str(numRect), ' rectangles with total area ', num2str(totalArea),...
    ' and the longest diagonal is: ', num2str(longestDiag)])















