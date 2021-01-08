%%%%%%%%%%%%%%%%%%%% Exercise 8 - Roots of Quad Equation %%%%%%%%%%%%%%%%%%

% This exercise demonstrates the use of if...else statements for
% matematical calculationss

%NOTE: To run sections of the code you can click in the block so that it is
%highlighted, and then press CTRL+ENTER to run the section.

%Catherine Paverd

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%The roots of a quadratic equation of the form ax^2 + bx + c = 0 depend on
%the discriminant, D, which is defined as D = b^2 - 4ac.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear
clc

%Create random variables a, b and c
a = rand(1);
b = rand(1);
c = rand(1);

D = b^2 - (4*a*c)

if D>0
    'The equation has two real roots'
elseif D == 0
    'The equation has one real root'
elseif D<0
    'The equation has no real roots'
else
    'Something has gone wrong in your claculation of D'
end


%% 
%Step 4 - Note that this is the same ifelse statement as before, howver now
%there are calculations added depending on the value of D

if D>0
    rootOne = (-b+(b^2-(4*a*c))^0.5)/(2*a);
    rootTwo = (-b-(b^2-(4*a*c))^0.5)/(2*a);
    disp(['The equation has two real roots: ', num2str(rootOne), ' and ', num2str(rootTwo)])
elseif D == 0
    rootOne = (-b+(b^2-(4*a*c))^0.5)/(2*a);
    rootTwo = (-b-(b^2-(4*a*c))^0.5)/(2*a);
    
    if(rootOne == rootTwo)                %This nested if else statement acts as a double check
        disp(['The equation has one real root: ', num2str(rootOne)])
    else
        disp('You may have done something strange. Check the maths.')
    end
    
elseif D<0
    'The equation has no real roots'
else
    'Something has gone wrong in your claculation of D'
end



%% 
%A switch statement is usually used when a finite amount of numbered inputs
%require different actions. For example, if you have seven facts, and you
%want to display one when a user inputs a number

%Note, to display an apostrope, use two apostrophes together '' (this is not
%the same as an inverted comma)

factNumber = input('Please choose a fact between 1 and 7: ');
                
                
switch factNumber 
    case 1
        'Lincoln and Brasenose are rivals'
    case 2
        'St Peter''s JCR bought the Wahoo sign'
    case 3
        'The ghost of William Laud is said to roll his head down the John''s library'
    case 4
        'Merton college maintains the space-time continuum on the last Sunday morning of October each year'
    case 5
        'Respectable lectures start at 5 minutes past the hour on Oxford time'
    case 6
        'The purpose of college boat racing is to have a crash'
    case 7
        'New college hides an Old wall'
    otherwise
        'Please choose a number between 1 and 7 next time'
end


























