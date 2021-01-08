%%%%%%%%%%%%%%%%%%%% Exercise 7 - Fibonacci Numbers %%%%%%%%%%%%%%%%%%%

% This exercise demonstrates the use of for loops to calculate Fibonacci
% numbers

%NOTE: To run sections of the code you can click in the block so that it is
%highlighted, and then press CTRL+ENTER to run the section. 

%Catherine Paverd

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%The first six numbers of the Fibonacci sequence are: 0, 1, 1, 2, 3, 5. In
%order to calculate the next number, you need to apply the formula:
%       Next Fibonacci Number = Sum of the Previous two Fibonacci Numbers
%       i.e. F(n) = F(n-1) + F(n-2)

%Note this code also uses num2str() and disp() functions

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 
clear
clc

fibNumMatTwenty = zeros(1, 20);    %Creates a vector of 1 row and
                                   %20 elements as a placeholder
fibNumMatTwenty(1) = 0;             %1st number is 0
fibNumMatTwenty(2) = 1;             %2nd number is 1
                                            
for n = 3:20                        %Start at number 3 up to 20
    fibNumMatTwenty(n) = fibNumMatTwenty(n-1)+ fibNumMatTwenty(n-2);    %Sum of previous two numbers in the Fib Num matrix
    disp(['Fib Num ', num2str(n), ' is ', num2str(fibNumMatTwenty(n))])        %Display the fib number calculated. Uses the disp() function with a [matrix] of string elements
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 
%You could also dynamically expand the size of the FibNumber matrix, for
%example if you didn't know how many numbers you needed to calculate when
%you defined the matrix first. Note that even so, you still need to create
%an empty matrix to start


fibNumUnknownSize = [];
fibNumUnknownSize(1) = 0;             %1st number is 0
fibNumUnknownSize(2) = 1;             %2nd number is 1
%Now assume I say I want the firt 16 numbers (this could be a user input to
%a program)

howManyNumbersToCalculate = 16;

%Note the warning MATLAB gives you in the for loop - it tells to
%preallocate matrix size for speed.

for n = 3:howManyNumbersToCalculate           %Start at number 3 up to 20
    fibNumUnknownSize(n) = fibNumUnknownSize(n-1)+ fibNumUnknownSize(n-2);    %Sum of previous two numbers in the Fib Num matrix
    disp(['Fib Num ', num2str(n), ' is ', num2str(fibNumUnknownSize(n))])       %Display new Fib number
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% 
%Task 2 Step 3 and 4
%Note here I create a new Fib Matrix

sumFib = 0;                 %Sum variable

myFibMat = zeros(1, 20);     %Creates a vector of 1 row and
                             %20 elements as a placeholder
myFibMat(1) = 0;             %1st number is 0
myFibMat(2) = 1;             %2nd number is 1

sumFib =  myFibMat(1) + myFibMat(2);    %Add the first two Fib Nums to the sumFib variable

                                            
for n = 3:20                        %Start at number 3 up to 20
    myFibMat(n) = myFibMat(n-1)+ myFibMat(n-2);    %Sum of previous two numbers in the Fib Num matrix
    sumFib = sumFib+ myFibMat(n)    %Update sumFib variable on each loop iteration. Note, you could also do this by summing all of the myFibMat elements every time
end


disp(['The sum of the first ', num2str(n), ' Fibonacci Numbers is ', num2str(sumFib)])        %Display the fib number calculated. Uses the disp() function with a [matrix] of string elements

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% 
%Task 3

%Note in the while loop that we must change the test variable within the
%loop, and that we need a separate counter for the loop (in this case, i)

sumFibTask3 = 0;                 %Initialise sumFib variable

fibMatGeneral = [];     %It is advisible to use dynamically allocated memory since you do
                        %not know how long it will take to exceed 1000.
fibMatGeneral(1) = 0;             %1st number is 0
fibMatGeneral(2) = 1;             %2nd number is 1

sumFibTask3 =  fibMatGeneral(1) + fibMatGeneral(2);    %Add the first two Fib Nums to the sumFib variable
i = 3;              %This will form the while loop counter that we can then use to index our matrix in the loop


while sumFibTask3 < 1000                                                 %The variable sumFibTask3 forms part of the test condition and must be updated in the loop
    fibMatGeneral(i) = fibMatGeneral(i-1) + fibMatGeneral(i-2);    %Sum of previous two numbers in the Fib Num matrix
    sumFibTask3 = sumFibTask3 + fibMatGeneral(i);                   %Update sumFib variable on each loop iteration - this is very NB for a while loop
    i = i+1;                                                        %We need to manually increment the while loop counter
end


disp(['The number of Fib Nos to make the sum exceed 1000 is ', num2str(i), ', and the value of sumFibTask3 is ', num2str(sumFibTask3)])       

%You may also want to display the summation before 1000, in which case you
%need to either use a separate sum Variable in the loop, or produce an output
%based on some knowledge of the loop and the Fibonacci number matrix. E.g.
%we know that the loop stops when it exceeds 1000, and therefore that the
%last number stored in the Fibonacci matrix (fibMatGeneral) is the number
%that would have pushed the sumFibTask3 variable above 1000. So we can
%subtract that number and then display the result

sumFibLessThanThousand = sumFibTask3 - fibMatGeneral(end)

disp(['The number of Fib Nos to make the sum stay below 1000 is ', num2str(i-1), ', and the value of the summation of these numbers is ', num2str(sumFibLessThanThousand)])       


%To check your while loop is adding correctly you could also just add the
%numbers of the fibMatGeneral at the end using the sum() function
checkVal = sum(fibMatGeneral(1, 1:end-1))
disp(['The check shows: ', num2str(checkVal)])

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% END %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%










