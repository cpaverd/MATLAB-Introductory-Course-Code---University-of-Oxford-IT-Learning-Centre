%%%%%%%%%%%%%%%%%%%% Exercise 18 - Timed Fibonacci Numbers %%%%%%%%%%%%%%%%%%%

% This exercise demonstrates the use of for loops to calculate Fibonacci
% numbers and times the execution

%NOTE: To run sections of the code you can click in the block so that it is
%highlighted, and then press CTRL+ENTER to run the section.

%Catherine Paverd
%2018

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

timeVec = 19;

for i = 10:5:100            %Outer for loop to calculate different lengths of Fibonacci sequence
    
    clear fibNumMat          %Clear storage vector to ensure fair timings
    tic                      %Start timer
    
    fibNumMat= zeros(1, i);    %Creates a vector of 1 row and i elements
    fibNumMat(1) = 0;             %1st number is 0
    fibNumMat(2) = 1;             %2nd number is 1
    
    for n = 3:i                        %Start at number 3 up to outer loop number
        fibNumMat(n) = fibNumMat(n-1)+ fibNumMat(n-2);    %Sum of previous two numbers in the Fib Num matrix
        disp(['Fib Num ', num2str(n), ' is ', num2str(fibNumMat(n))])        %Display the fib number calculated. Uses the disp() function with a [matrix] of string elements
    end
    
    
    endTime = toc;
    timeVec(i/5 - 1) = endTime; %Add to time keeping vector
    
end


timeVec             %Print out times for loop calculation


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


