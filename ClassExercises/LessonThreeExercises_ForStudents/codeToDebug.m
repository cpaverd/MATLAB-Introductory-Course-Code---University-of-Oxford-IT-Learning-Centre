%codeToDebug script
%Catherine Paverd
%May 2018


%This scirpt executes without errors, however we are trying to calculate
%the total area of all of the shapes displayed, but the output is incorrect
%Use the debugger to step trhough the code to help you find where it goes
%wrong and then to fix it.


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















