%%%%%%%%%%%%%%%%%%%% Exercise 10 - Noughts and Crosses %%%%%%%%%%%%%%%%%

% This exercise demonstrates how multiple functions work together to form a
% simple game.

%Note, you can try and build in more functionality once you are comfortable
%with this code. e.g. allow the game to continue when a user enters an
%incorrect input (currently it exits).

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


player1 = input('Is the 1st player Noughts (type o) or Crosses (type x)?', 's');        %String input (..., 's') from user (either o or x)

switch player1
    case 'x'
        player2 = 'o';
    case 'o'
        player2 = 'x';
    otherwise
        disp('No valid input to the game!! Try again!');
        return;
end

%% Starting the game...

% Player1 starts and player2 follows.
% The rounds depend on the available squares (in our case 9) and on whether
% someone wins before we run out of squares.

% We need repetitions => FOR or WHILE loop
available_squares = 9;
winner = 0;                %This is a flag (a variable containing true or false) similar to the one used in the quadEquationRootsVFlag function

while (available_squares>0)
    
    if (mod(available_squares,2) == 1) %Determining the play turn based on the number of squares filled. i.e. divide availableSquares by 2 and see if the remainder == 1. Then it is play 1's turn
        place = input('The 1st player chooses where on the board will play (choose a square in the form of [row, column])');
        % Representation of board as a matrix of characters
        % Every time a player chooses a square on the board a new element
        % in the board is entered
        if board(place(1),place(2)) == 'e'
            board(place(1),place(2)) = player1;
        else
            disp('You cannot play on a square that another player or you have played before! End of game!');
            return;
        end
        
        drawSymbol(player1,place);
        available_squares = available_squares - 1;
        winner = checkWin(board,player1);
        % Second part of the code
        % To be completed...
        
        if winner == 1
            message = ['Gongratulations!! Player ', player1,  'has won!!'];
            disp(message);
            return;
        end
        
    else
        place = input('The 2nd player chooses where on the board will play (choose a square in the form of [row, column])');
        % Representation of board as a matrix of characters
        % Every time a player chooses a square on the board a new element
        % in the board is entered
        if board(place(1),place(2)) == 'e'
            board(place(1),place(2)) = player2;
        else
            disp('You cannot play on a square that another player or you have played before! End of game!');
            return;
        end
        
        drawSymbol(player2,place);
        available_squares = available_squares - 1;
        winner = checkWin(board,player2);
        
        if winner == 1
            message = ['Gongratulations!! Player ', player2,  ' has won!!'];
            disp(message);
            return;
        end
        
    end
    
    
end


