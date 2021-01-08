function [ ] = createBoard()
%CREATEBOARD To create the board of the game
%   The board will include a 1x1 square splitted into 9 sub-squares


figure(1)

xc = [0 1 1 0 0];
xy = [0 0 1 1 0];

xh = [0 1 1 0];
yh = [0.33 0.33 0.66 0.66];

%Note, here we use the plot function which forms part of lesson 3
%The function will draw a blue line ('b') between the x, y pairs
%specified in the matricies above. i.e. if we say plot(xc, xy) it will plot
%a point at (0,0), then (1,0), then (1,1), then (0,1), then (0,0) and join
%them all using a line of a style specified by us (in this case, blue, 'b').
%The command hold on makes sure the figure remains open for each plot so we
%can plot one line graph on top of another. It is also used in the draw
%symbol function

plot(xc,xy,'b') 
hold on
plot(xh,yh,'b')    
hold on
plot(yh,xh,'b')    
hold on

end

