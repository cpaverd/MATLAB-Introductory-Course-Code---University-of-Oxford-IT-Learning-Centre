%MATLAB Part 2 scripts
%Catherine Paverd

%Demonstration examples used during the theory part of the lectures

%%%%%%%%%%%%%%%%%
%% Define some matricies

A = [1,3;4,2]
B = [2,1;2,3]

%%%%%%%%%%%%%%%

%% Examples of arithmetic operators

C = A.^B    %Will raise each element in A to power of corresponding element in B

D = A^B     %Will try and raise A to the power of a Matrix, B, which is not possible --> leads to an error

E = A^2     %Will try A*A which is possible and is matrix multiplication (for explanation, check: https://uk.mathworks.com/help/matlab/ref/mtimes.html)

F = A.^2    %Will raise every element in A to the power of 2

G = A.*B    %Will multiply each element in A by the corresponding element in B

H = A*B     %Will multiply A by B using matrix multiplication

%%%%%%%%%%%%%%%%%%%%%
%% Examples of relational operators

J = A<B     %Returns a matrix of 1 (true) and 0 (false) for the element of A compared to corresponding element of B.

K = A<2     %Returns a matrix of 1 (true) and 0 (false) for the element of A compared to the value 2.

L = A<=2    %Returns a matrix of 1 (true) and 0 (false) for the element of A less than or equal to the corresponding element of B.

M = 2<A     %Returns a matrix of 1 (true) and 0 (false) for the value 2 compared to each element of A.

%%%%%%%%%%%%%%%%%%%%
%%

%In this section some comparisons are made between names. If using the
%relational operators, MATLAB compares element-wise (as in the previous
%examples). I.e. using name1 == name3 means MATLAB compares 'D' with 'd'
%etc. and returns a vector filled with 1 and 0 to indicate the result. Note
%that using this, MATLAB cannot compare vectors of different sizes (i.e.
%name1==name4 will return an error). Note also that capital letters have
%a smaller numeric value than small letters.

%This is where more intelligent Matlab %functions such as strcmp()
%(string compare) work well. strcmp() will return a single value
%indicating whether the entire name is equal to the entire other name, 
%and works on names of different lengths.

name1 = 'Danny'
name2 = 'Danny'
name3 = 'danny'
name4 = 'Jess'

nameCompCapital = name1 == name2
nameCompSmall = name1 == name3
nameCompOther = name1 >= name3
nameCompStrCapital = strcmp(name1,name2)
nameCompStrSmall = strcmp(name1,name3)

%The all() function returns true if every value in the matrix is non-zero
%Returns a single value for 1D matricies, adn another matrix for 2D
%matricies, evaluated in terms of coloumns.
nameLetterComp = all(nameCompOther)

%%%%%%%%%%%%%%%%%%%%%
%%

%Relational operators used between matricies evaluate when the matricies
%contain non-zero values.

A = [1,3;4,2]
B = [2,1;2,3]
Y = [0,1;2,2]
Z = [0,1;2,0]

N = A&B     %Returns a matrix of 1 or 0. Returns 1 if an element in A AND
            %the corresponding element in B are both non-zero
            
O = Z|Y     %Returns a matrix of 1 or 0. Returns 1 if an element in A OR
            %the corresponding element in B are both non-zero
            
P = Z&Y

Q = A&&B    %Short circuit operators (&& and ||) od not work on matricies, only on scalars

%%%%%%%%%%%%%%%%%%%%%%

%%

%Remember the if statement format is:

%if (test condition)
%   The code you want to run if the test is true
%end



a = 10;
b = 5;
c = 15;


if(a>b)
    'a is greater than b'
end

%%%

if(a>c)                     %If ture, MATLAB will run the code in this block and then go to the end
    'a is greater than c'
elseif(a<c)                 %MATLAB will only enter this elseif statement if the first if statement is not true
    'a is less than c'
else                        %If neither the if nor the ifelse statement are correct MATLAB will enter the else
    'a is neither greater than, nor less than c'
end


%%%

if(c>a)
    if(c>b)                 %MATLAB will only enter this 'if' block if the first if statement is true
        'c is greater than a and b'
    end
end

%%%

if(c>a && c>b)              %This is essentially equivalent to the previous statments
    'c is greater than a and b'
end

%%%

if(isnumeric(a))            %You can also use matlab logical expressions inside the 'test condition' of an if statement
    'a is a number'
elseif(ischar(a))
    'a is a character'
else
    'a is neither a character nor a number'
end

%%%%%%%%%%%%%%%%%%%%

%%

%This code asks user for an input using a built in MATLAB input() function
%The user's answers are very well defined and therefore can be tested and
%separately easily. In this case, a switch statement is very efective.


userSelection = input('Please choose plot type: "Bar" or "Pie"', 's')

dataVec = [1,3,2,5,1,10];


switch userSelection
    case 'Bar'
        bar(dataVec)
    case 'Pie'
        pie(dataVec)
    otherwise
        'You have made an invalid choice: '
        userSelection
end



%%%%%%%%%%%%%%
%%

%Remember the for loop syntax is

%for index = StartValue: Increment: EndValue
%   Code you want to execute while the index is lower than, or equal to, the EndValue
%end

%REMEMBER: with for loops, MATLAB will cange your index value automatically
%Good Practice: DO NOT change the value of the index manually in the loop
%however, you will probably still use the index in the loop.

for counter = 1:10:40
    'I will now output the counter value'
    counter
end

%Look at the warning highlighted by the red underlining 'counter' inside
%the loop.
%This is an example of what not to do!!!!!!!!!!!
for counter = 1:10:41
    'I will now try and change the counter value'
    counter = counter + 1
end



%Remember the while loop syntax is

%while (Test condition)
%   Code you want to execute while the test condition is true
%   You need to change something that affects the test condition inside
%   the code you put here!
%end

counterForWhileLoop = 1;
while counterForWhileLoop < 10
    'I can do something in here while the test expression is true'
    counterForWhileLoop = counterForWhileLoop+2;
end

%REMEMBER - Press ctrl+c to stop execution immediately and get out of an infinite loop

%
% counterForWhile = 1;
% 
% while counterForWhile < 10
%     'INFINITE LOOP!'
% end

%%%%%%%%%%%%%%
%%


%Note: disp() is a Matlab function that dispays numbers and letters nicely
%and mod(x, y) is a function that returns the remainder when x is divided
%by y. i.e. if the remainder is 0, then x is divisible by y.

%In the first loop, if there is a remaisnder, we skip the disp() function
%and continue straight t the next loop iteration

for counter2 = 1:50
    if mod(counter2,7)  %If there is a remainder...
        continue        %... continue to next loop iteration
    end
    
    disp(['Value is divisible by 7: ' num2str(counter2)])
    
end

%Determine the first prime number in a given interval (between 1000 and
%1500)

startVal = 1000;
endVal = 1500;

for counter3 = startVal:1:endVal
    if isprime(counter3)        %If it is a prime number, break out of the for loop
        break
    end
    
end

disp(['Your first prime number between ', num2str(startVal), 'and ', num2str(endVal), 'is: ', num2str(counter3)])


%Question: Ask yourself how you would build in an error check to let you know
%if there is no prime number between your start and end values

%%%%%%%%%%%%%%%%%%%%%












