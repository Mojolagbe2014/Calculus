% demoIntegralAnon.m
%   Show integration using anonymous function 
% 
%       Author: Mojolagbe Jamiu

%% make anonymous function
sinc = @(x) sin(x)./x;

%% plot function
x = linspace(0, 4*pi, 300);
plot(x, sinc(x));
grid on

%% find integral
xmin = 0; 
xmax = 4*pi;
I = integral(sinc, xmin, xmax); % sinc is already function handle don't need @

disp(['Integral is: ', num2str(I)]);

%% find integral of gaussian
width = 1;
g = @(x) gauss(x, 0, width); % anonymous function
I = integral(g, -width, width);

disp(['Integral of Gaussian: ', num2str(I)]);