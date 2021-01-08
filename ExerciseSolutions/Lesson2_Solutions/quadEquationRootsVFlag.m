%%%%%%%%%%%%%%%%%%%% Exercise 9 - Roots of Quad Eq Function %%%%%%%%%%%%%%%%%

% This exercise demonstrates the use of functions

%Catherine Paverd


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%In this case, we set a flag (which is simply another variable)
%which we need to check in the main program to tell us whether rootOne and 
%rootTwo were correctly assigned. This is useful if we do not want the
%program to stop if there are no real roots

function [rootOne, rootTwo, checkRealFlag] = quadEquationRootsVFlag(a,b,c)


checkRealFlag = 0;      %Initialise the flag to false (value of 0)

D = b^2 - (4*a*c);

if D>0
    checkRealFlag = 1;      %Set flag to true as we have real roots
    rootOne = (-b+(b^2-(4*a*c))^0.5)/(2*a);
    rootTwo = (-b-(b^2-(4*a*c))^0.5)/(2*a);
elseif D == 0
    checkRealFlag = 1;      %Set flag to true as we have real roots
    rootOne = (-b+(b^2-(4*a*c))^0.5)/(2*a);
    rootTwo = (-b-(b^2-(4*a*c))^0.5)/(2*a);    
elseif D<0
    checkRealFlag = 0;      %Ensure flag to false as we do not have real roots
    rootOne = 0;
    rootTwo = 0;
end


end %Function end 



