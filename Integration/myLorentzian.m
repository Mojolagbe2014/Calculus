function y = myLorentzian(x)
% returns normalized Lorentzian centered at 0 with width 1
%

y = (1/(2*pi))./((1/4) + x.^2);

% b = integral(@myLorentzian, -inf, inf)