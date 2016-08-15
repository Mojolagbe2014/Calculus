% demoTrapz.m 
%   Demonstrate integration techniques by integrating
%   gaussian (I = trapz(x, y))
%       
%       Author: Mojolagbe Jamiu

%% set parameters
N = 101;
width = 0.25;
xmin = -4*width;
xmax = +4*width;
x0 = 0;

%% tabulate function
x = linspace(xmin, xmax, N);
g = gauss(x, x0, width);


%% calculate integral with traps
Int = trapz(x, g);


%% display result and plot
disp(['Integral = ', num2str(Int, 8)]);
plot(x, g);
xlabel('x');
ylabel('g');
grid on