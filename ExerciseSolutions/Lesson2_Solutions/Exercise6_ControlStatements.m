%%%%%%%%%%%%%%%%%%%% Exercise 6 - Control Statements %%%%%%%%%%%%%%%%%%%

% This exercise demonstrates the use of for loops to access matrix elements
% of a matrix position by position. This is often useful when data in a
% matrix needs to be read and operated on individually.

%NOTE: To run sections of the code you can click in the block so that it is
%highlighted, and then press CTRL+ENTER to run the section. You should run
%the Task 1 section first as it creates the matrix used throughout the code

%Catherine Paverd

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%% 
%Task 1: Create a 2D Matrix

clear
clc


myMatrix = rand(8,12);              %Creates a matrix using the rand() function
                                    %The matrix has 8 rows and 12 columns
                                    
disp(myMatrix)                      %Displays the matrix created.
                                    %You can also display the matrix by
                                    %typing myMatrix without a ; symbol

sizeOfMatrix = size(myMatrix)       %Uses the size() function to obtain the
                                    %matrix size. The result is a
                                    %two-element array. The first element
                                    %is the number of rows, the second is
                                    %the number of columns.
                                    
                                    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%                                    
                                    
%% 
%Task 2: Matrix scanning and selective display


for counter = 1:12                  %Use a for loop to scan from 1 to 12 in
    myMatrix(1,counter)             %steps of one (default). Display the
end                                 %matrix value at row 1, column 'counter'

%An equivalent for loops is as follows. Note the explicit step size:
for counter = 1:1:12
    myMatrix(1, counter)
end




%% 
%If you do not know the dimensions you can use size(). Recall we stored the
%size of myMatrix in the variable sizeOfMatrix earlier. We use the number
%of columns (i.e. element 2 in the sizeOfMatrix variable) to display the
%entire first row.

for counter = 1:sizeOfMatrix(2)
    myMatrix(1, counter)
end


%If you hadn't stored the size earlier, you could also use the size()
%function in the for loop as follows. Note that to get the size of the
%second dimension of the matrix (i.e. number of columns) we write
%size(myMtrix, 2). To get the number of rows we would write size(myMatrix,1)
%Please type help size for more information on the size function

for counter = 1:size(myMatrix, 2)
    myMatrix(1, counter)
end



%% 
%To display using two for loops we need to define one loop inside another
%(i.e. a 'nested' loop). Then we use both for loop counters to access the
%desired matrix location

%Note in this code, the value of the outer loop counter will remain steady
%while the inner loop counter runs through all of its values. i.e.
%counterRows will have a value of 1 while counterColumns runs from 1 to 12.
%Then counterRows will increment to a value of 2 while counterColumns runs
%from 1 to 12 again. This continues until the last iteration of the outer 
%loop, i.e. until counterRows reaches a value of 8



for counterRows = 1:8
    for counterColumns = 1:12
        myMatrix(counterRows, counterColumns)
    end
end

%You can also use the size() function as follows:


for counterRows = 1:size(myMatrix,1)
    for counterColumns = 1:size(myMatrix,2)
        myMatrix(counterRows, counterColumns)
    end
end



%You could switch the order of the for loops if you wanted to display down
%each column. 



%% 
%To display elements greater than 0.5 we add an if statement in the for
%loop as follows. In this loop I also use the display function, disp(), to
%show what the output looks like using that.

%Note, the else statement here is optional

for counterRows = 1:size(myMatrix,1)
    for counterColumns = 1:size(myMatrix,2)
        
        elementWeAreLookingAt = myMatrix(counterRows, counterColumns);
        
        if elementWeAreLookingAt > 0.5
            disp(elementWeAreLookingAt)
        else
            disp('This element is not greater than 0.5')
        end
        
    end
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%% END %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




