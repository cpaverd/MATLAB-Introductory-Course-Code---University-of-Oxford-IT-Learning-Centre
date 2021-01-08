function [ winFlag] = checkWin( board , player)
%CHECKWIN: checks whether a player has won or not
%   At the first part of the function the different cases when someone can
%   win are examined.
%   The winFlag is a logical variable: 1 for win 0 for no win


if (board(1,1)== 'x' && board(1,2)=='x' && board(1,3) == 'x') || (board(1,1)== 'o' && board(1,2)=='o' && board(1,3) == 'o')
    winFlag = 1;
elseif (board(2,1)== 'x' && board(2,2)=='x' && board(2,3) == 'x') || (board(2,1)== 'o' && board(2,2)=='o' && board(2,3) == 'o')
    winFlag = 1;
elseif (board(3,1)== 'x' && board(3,2)=='x' && board(3,3) == 'x') || (board(3,1)== 'o' && board(3,2)=='o' && board(3,3) == 'o')
    winFlag = 1;
elseif (board(1,1)== 'x' && board(2,1)=='x' && board(3,1) == 'x') || (board(1,1)== 'o' && board(2,1)=='o' && board(3,1) == 'o')
    winFlag = 1;
elseif (board(1,2)== 'x' && board(2,2)=='x' && board(3,2) == 'x') || (board(1,2)== 'o' && board(2,2)=='o' && board(3,2) == 'o')
    winFlag = 1;
elseif (board(1,3)== 'x' && board(2,3)=='x' && board(3,3) == 'x') || (board(1,3)== 'o' && board(2,3)=='o' && board(3,3) == 'o')
    winFlag = 1;
elseif (board(1,1)== 'x' && board(2,2)=='x' && board(3,3) == 'x') || (board(1,1)== 'o' && board(2,2)=='o' && board(3,3) == 'o')
    winFlag = 1;
elseif (board(1,3)== 'x' && board(2,2)=='x' && board(3,1) == 'x') || (board(1,3)== 'o' && board(2,2)=='o' && board(3,1) == 'o')
    winFlag = 1;
else winFlag = 0;
end



end

