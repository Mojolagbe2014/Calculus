% demoFundamentalTheorem.m
%
%   Use humps(x) on the unit integral
%
%       Author: Mojolagbe Jamiu

%% set parameters
Nx = 500;

%% tabulate function for plotting 
x = linspace(0,1,Nx);
f = humps(x);


%% integrate using trapz
F(1) = 0;
for ix = 2:Nx
    F(ix) = trapz(x(1:ix), f(1:ix));
end

%% derivatives of integral using gradient
dx = x(2) - x(1);
dFdx = gradient(F, dx);

%% plot f, f, and dF/dx
subplot(3,1,1);
    plot(x, f);
    xlabel('x');
    ylabel('$f(x)$ ', 'Interpreter', 'latex',...
        'FontSize', 14);
    title('Fundamental Theorem of Calculus');
    grid on;
    
subplot(3,1,2);
    plot(x,F);
    xlabel('x');
    ylabel('$F(x) = \int_0^x f(u) du$ ', 'Interpreter', 'latex',...
        'FontSize', 14);
    grid on;
    
 subplot(3,1,3)
    plot(x, dFdx);
    xlabel('x');
    ylabel('$dF/dx$ ', 'Interpreter', 'latex',...
        'FontSize', 14);
    grid on