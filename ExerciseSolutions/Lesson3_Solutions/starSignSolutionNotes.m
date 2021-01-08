%starSign Script


%First try and familiarise yourself with the code. It asks a user for their
%date of birth, and outputs their star sign based on their answer. At the
%moment, there are no error checks, apart from matlab checking the type of
%user input, i.e. whether it is a number or a string.
%Try and write some error checks using if statements and output messages to
%the user to indicate what they have done wrong.

%If you have time, try and make the program run until the user inputs a
%valid date (i.e. the program should give them an indication of what they
%have done incorrectly, and then ask them for another input.)

%For reference, the dates and star signs are:

% Aries (March 21-April 19)
% Taurus (April 20-May 20)
% Gemini (May 21-June 20)
% Cancer (June 21-July 22)
% Leo (July 23-August 22)
% Virgo (August 23-September 22)
% Libra (September 23-October 22)
% Scorpio (October 23-November 21)
% Sagittarius (November 22-December 21)
% Capricorn (December 22-January 19)
% Aquarius (January 20 to February 18)
% Pisces (February 19 to March 20)



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%SOLUTION
%There is no one correct solution to this exercise. You need to write in the checks that
%you think are necessary. It may be things like checking whether the date in a positive value
%or changing the if statements inside the switch cases to be if, elseif, else statements
%with an error message in the else if the day is incorrect.

%To make the code run until a user enters a correct input, consider encasing the entire script
%in a while loop, and setting a validDateFlag at the end of the script.
%During your checks for a valid month and day
%you can use the continue() function to skip the remaining code in the while loop
%if the user has entered an incorrect input. Set the validDateFlag to true 
%just before the end of the while
%loop so that it will only change to true if the user has entered a date that is correct

%Please try your own solution to this, but feel free to email me your code or questions
%and I can give you more specific advice from there.


clear all
close all

%Ask user for month and date of birth
userInputMonth = input('Please enter the month in which you were born: ', 's');
userInputDate = input('Please enter the day on which you were born: ');



switch userInputMonth
    
    case 'January'
        if userInputDate <=19
            disp('You are a Capricorn')
        else
            disp('You are an Aquarius')
        end
        
    case 'February'
        if userInputDate <= 18
            disp('You are an Aquarius')
        else
            disp('You are a Pices')
        end
        
    case 'March'
        if userInputDate <= 20
            disp('You are a Pices')
        else
            disp('You are an Aries')
        end
        
    case 'April'
        if userInputDate <= 19
            disp('You are an Aries')
        else
            disp('You are a Taurus')
        end
        
    case 'May'
        if userInputDate <= 20
            disp('You are a Taurus')
        else
            disp('You are an Gemini')
        end
        
    case 'June'
        if userInputDate <= 20
            disp('You are a Gemini')
        else
            disp('You are a Cancer')
        end
        
    case 'July'
        if userInputDate <= 22
            disp('You are a Cancer')
        else
            disp('You are a Leo')
        end
        
    case 'August'
        if userInputDate <= 22
            disp('You are a Leo')
        else
            disp('You are a Virgo')
        end
        
    case 'September'
        if userInputDate <= 22
            disp('You are a Virgo')
        else
            disp('You are a Libra')
        end
        
    case 'October'
        if userInputDate <= 22
            disp('You are a Libra')
        else
            disp('You are a Scorpio')
        end
        
    case 'November'
        if userInputDate <= 21
            disp('You are a Scorpio')
        else
            disp('You are a Sagittarius')
        end
        
    case 'December'
        if userInputDate <= 21
            disp('You are a Sagittarius')
        else
            disp('You are a Capricorn')
        end
        
end




