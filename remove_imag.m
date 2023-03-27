function result = remove_imag(pol_roots)

%  Get rid of roots with imaginary parts

%  USAGE
%  result = remove_imag(pol_roots)
% 
%  INPUTS
%  pol_roots:  An array that contains the roots of a polynomial (can be
%              real, imaginary, or complex).
%
%  OUTPUT
%  result: The real roots of the polynomial.  Roots that have imaginary
%          parts are replaced with nan

%  Loop through the roots of a polynomial, and record only the ones with
%  imaginary parts that are equal to zero.

%  Loop through each root
for counter = 1:length(pol_roots)
    %  If the root's imaginary part is zero, then record the real part of
    %  the root
    if imag(pol_roots(counter)) == 0
        pol_roots(counter) = real(pol_roots(counter));
    else  %  Otherwise, this root to nan
        pol_roots(counter) = nan;
    end
end

result = pol_roots;  %  Set result to pol_roots

return  %  Go back to the calling function