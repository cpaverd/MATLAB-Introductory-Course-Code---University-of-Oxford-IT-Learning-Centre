%%%%%%%%%%%%%%%%%%%% Exercise 10 - Noughts and Crosses %%%%%%%%%%%%%%%%%

% This exercise demonstrates how multiple functions work together to form a
% simple game.

%Note, you can try and build in more functionality once you are comfortable
%with this code. e.g. allow the game to continue when a user enters an
%incorrect input (currently it exists).

%Erasmia Lyka
%May 2016

%Updated by Catherine Paverd
%Nov 2016

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% Housekeeping code
clear;
close all;
clc;



%% Create the board
disp('Welcome to X and O! Let play!');
createBoard();

% Initialization of board matrix
for i = 1:3
    for j = 1:3
        board(i,j) = 'e';
    end
end

%% Players will choose their symbols in the game
% Demonstration of switch case. Can also be done with if...else statements
% Use the function input('message', 's') to display a messgae to the user
% and ask them for an input of datatype 'string' ('s').
% Store it in a variable and determine the other player's symbol based on
% the first player (hint, try using a switch statement for this).








%% Starting the game...

% Player1 starts and player2 follows.
% The rounds depend on the available squares (in our case 9) and on whether
% someone wins before we run out of squares.

% We need repetitions => FOR or WHILE loop.
available_squares = 9;
winner = 0;       %This is called a flag (a variable containing true or false) similar to the one used in the quadEquationRootsVFlag function

%In step 5 of this exercise you will need to put a specific type of loop
%at this point in your code
    
    if (mod(available_squares,2) == 1) %Determining the play turn based on the number of squares filled. i.e. divide availableSquares by 2 and see if the remainder == 1. Then it is play 1's turn
        
        place = input('The 1st player chooses where on the board will play (choose a square in the form of [row, column])');
        % Representation of board as a matrix of characters
        % Every time a player chooses a square on the board a new element
        % in the board is entered
        if board(place(1),place(2)) == 'e';
            board(place(1),place(2)) = player1;
        else
            disp('You cannot play on a square that another player or you have played before! End of game!');
            return;
        end
        
        %Now use the drawSymbol function to draw the player 1 symbol
        %Also remember to decrement the available squares
                
        %Check whether there is a winner using the checkWin function in
        %your current folder
        
        
        %Use an 'if' statement to check the 'winner' variable for a winner, and
        %display a message
        
        
        % Complete the code for player two under the 'else'...

    else
       %Here you should ask player two for an input position of where they
        %want to place their symbol in the form [row, column]
        
        % The board is represented as a matrix of characters
        % Every time a player chooses a square on the board a new element
        % in the 'board' variable is entered
        
        %Check if the square chosen by the player is empty and if so, place
        %the player's symbol there. If not, exit the game by typing return
        if  %board square is empty;
           %Place player's symbol there
        else
            %Display a message saying the square is invalid and then exit
            %(return)
            return;
        end
        
        %Now use a function to draw the player 2 symbol
        %Also remember to decrement the available squares
        
        
        %Check whether there is a winner using the checkWin function in
        %your current folder
        
        
        %Use an 'if' statement to check the 'winner' variable for a winner, and
        %display a message
        
    end
    
    



