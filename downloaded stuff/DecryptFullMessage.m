function [z] = DecryptFullMessage(n, e, c)

% Finds the 2 prime factors making up n
% and assigns the 1st one to p 
% and 2nd one to q

f = factor(n) ;
p = f(1);
q = f(2);

% Finds the value of x using those p and q
x = (p-1)*(q-1);


% Runs a loop from value 1 to n 
% and checks the outcome of the mod 
% then inject the current number into d
% if the outcome is 1, then break out of loop
for i=1:n
  j=mod(e*i, x);
  d=i;
  if j==1, break, end
end

% Now that d has been found pass n, d and c 
% into the decrypt string function provided in canvas
decryptString(n,d,c)

