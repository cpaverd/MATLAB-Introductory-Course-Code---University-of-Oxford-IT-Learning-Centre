%%%%%%%%%%%%%%%%%%%% Exercise 9 - Roots of Quad Eq Function %%%%%%%%%%%%%%%%%

% This exercise demonstrates the use of functions

%Catherine Paverd

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function [rootOne, rootTwo] = quadEquationRoots(a,b,c)

%This is the similar code to the previous exercise



D = b^2 - (4*a*c);

if D>0
    rootOne = (-b+(b^2-(4*a*c))^0.5)/(2*a);
    rootTwo = (-b-(b^2-(4*a*c))^0.5)/(2*a);
elseif D == 0
    rootOne = (-b+(b^2-(4*a*c))^0.5)/(2*a);
    rootTwo = (-b-(b^2-(4*a*c))^0.5)/(2*a);    
elseif D<0
   %Here you could assign values to the variables rootOne and rootTwo
   %However, if you leave it blank (as in this case), MATLAB will throw an
   %error if it reaches this condition.
end



end %Function end 



