function dv = fitz_hugh(t, state, a, epsilon, gamma, current)

dv = zeros(2,1);

dv(1) = -state(1).*(state(1)-a).*(state(1)-1)-state(2) + current;
dv(2) = epsilon.*(state(1) - gamma.*state(2));

return