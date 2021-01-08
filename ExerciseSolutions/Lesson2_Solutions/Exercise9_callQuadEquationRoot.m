%%%%%%%%%%%%%%%%%%%% Exercise 9 - Calling Quad Eq Function %%%%%%%%%%%%%%%%%

% This exercise demonstrates how to call a function from an m file

%Catherine Paverd

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%You can generate random values of a, b and c, and call the function to
%calculate the roots. However here we will call the function with specific
%values to illustrate the different cases, and we will use the function
%that contains the check flag so that the program does not exit with an
%error in the case of no real roots.

%The if...else statements are repeated in each block.


%%
%Case 1: real roots, D>0

clear
clc

a = 1;
b = 4;
c = 1;

[rootOne, rootTwo, flag] = quadEquationRootsVFlag(a,b,c);

if flag ==1 %i.e. if the roots exist based on what the flag was set to in the function
    if(rootOne == rootTwo)          %Test if the roots are equal for display purposes
        disp(['The equation has one root: ', num2str(rootOne)])
    else
        disp(['Roots exist and are ', num2str(rootOne), ' and ', num2str(rootTwo)])
    end
elseif flag ==0
    disp('No real roots')
else
    disp('Something went wrong')
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%
%Case 2: one real root, D=0
a = 1;
b = 2;
c = 1;


[rootOne, rootTwo, flag] = quadEquationRootsVFlag(a,b,c);

if flag ==1 %i.e. if the roots exist based on what the flag was set to in the function
    if(rootOne == rootTwo)          %Test if the roots are equal for display purposes
        disp(['The equation has one root: ', num2str(rootOne)])
    else
        disp(['Roots exist and are ', num2str(rootOne), ' and ', num2str(rootTwo)])
    end
elseif flag ==0
    disp('No real roots')
else
    disp('Something went wrong')
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%
%Case 3: no real roots, D<0
a = 4;
b = 1;
c = 6;


[rootOne, rootTwo, flag] = quadEquationRootsVFlag(a,b,c);

if flag ==1 %i.e. if the roots exist based on what the flag was set to in the function
    if(rootOne == rootTwo)          %Test if the roots are equal for display purposes
        disp(['The equation has one root: ', num2str(rootOne)])
    else
        disp(['Roots exist and are ', num2str(rootOne), ' and ', num2str(rootTwo)])
    end
elseif flag ==0
    disp('No real roots')
else
    disp('Something went wrong')
end

