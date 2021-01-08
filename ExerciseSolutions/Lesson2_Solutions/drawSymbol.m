function [] = drawSymbol( player, place)
%DrawSymbol draws a O or an X depending on the player in the place indicated by the player 

% Coordinates on the board
x = 0.33*(place(2)-1) + 0.33/2;
y = 1 - 0.33*(place(1)-1) - 0.33/2;

% Symbol drawn

if player == 'x'
    x1 = [x-0.1, x+0.1];
    y1 = [y + 0.1, y-0.1];
    x2 = [x+0.1 x-0.1];
    y2 = [y+0.1 y-0.1];
    
    plot(x1,y1,'r',x2,y2,'r')
    hold on
    
elseif player == 'o'
    
    ang=0:0.01:2*pi;
    r = 0.1;
    xp=r*cos(ang);
    yp=r*sin(ang);
    plot(x+xp,y+yp,'g');
    hold on


end

