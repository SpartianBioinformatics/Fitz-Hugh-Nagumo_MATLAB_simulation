function result = jac(V_eq, w_eq, a, gam, epsilon)

%  Function that defines the Jacobian MATRIX 
%  derivatives for the Fitz-Hugh-Nagumo equations

result = [-3*(V_eq^2)+2*(1+a)*V_eq-a, -1; epsilon, -epsilon*gam];
return