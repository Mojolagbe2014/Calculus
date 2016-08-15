% demoGradient.m
%   Demonstrate gradient of tabulated values
% 
%       Author: Mojolagbe Jamiu

%% tabulate function
x = linspace(0, 1, 300);
h = humps(x);

%% calculate gradient (=derivative)
dx = x(2) - x(1);
dhdx = gradient(h,dx);

%% plot results 
subplot(2, 1, 1)
    plot(x, h)
    xlabel('x');
    ylabel('$$h(x)$$', 'Interpreter', 'latex');
    title('humps(x)');
    grid on;
    
subplot(2, 1, 2);
    plot(x, dhdx);
    title('Derivative of humps using gradient');
    xlabel('x');
    ylabel('$$\frac{dh(x)}{dx}$$', 'Interpreter', 'latex');
    grid on;