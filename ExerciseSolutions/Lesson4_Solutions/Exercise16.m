%Exercise 16
%Creating a video
%Catherine Paverd
%2019


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc
clear all
close all

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Task 1

videoVar = VideoWriter('a Video of my Data.avi');
videoVar.FrameRate = 1;         %Set framerate to 1 frame per second, otherwise it will be too fast to see
open(videoVar);


for n = 1:5
    testData = rand(1,20);
    hFig = figure(1);
    clf                        %This command clears the previous axes from the figure (1) window
                               %Note: you could also just use a new figure
                               %each time, but if your loop runs 100 times
                               %you will end up with 100 new figures,
                               %therefore sometimes it is better to use
                               %only a single numbered figure (like
                               %figure(1) or figure(2) etc., and clear it
                               %in between each plot using the clf command.
    plot(testData);
    pause(1)                    %Allow time to see figure and let it plot correctly before storing in the video file
    
    vidFrame = getframe(hFig);
    writeVideo(videoVar, vidFrame);
    
end

close(videoVar);            %Completes the video formatting

    




