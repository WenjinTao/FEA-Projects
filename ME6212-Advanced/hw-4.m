%%%%%%%%%%%%%%% for ME6212/Hw_4%%%%%%%%%%%%%%%
% Software: MATLAB R2014a
% Author: Wenjin Tao
% Missouri S&T 
% Copyright(c) by Wenjin Tao
% Date: 02/29/2015

clc;clear;close all;
M = [1 1;1 2];
C = [1 1;1 3];
K = C;
F=[1;2];
K_bar = M + 0.25*C + 0.0625*K;
t=0:0.5:15;
U = zeros(2,31);
V = zeros(2,31);  % velocity
A = zeros(2,31);  % acceleration
A(:,1) = [0;1];
R = zeros(2,31);
for i = 2:31
    R(:,i) = 0.0625*F + M*( U(:,(i-1)) + 0.5*V(:,(i-1)) + 0.0625*A(:,(i-1)) ) + C*( 0.25*U(:,(i-1)) + 0.0625*V(:,(i-1)) );
    U(:,i) = inv(K_bar)*R(:,i);
    A(:,i) = -A(:,i-1) + 16*( U(:,i) - U(:,i-1) - 0.5*V(:,i-1) );
    V(:,i) = V(:,(i-1)) + 0.25*( A(:,i-1)+A(:,i) );
end
r = [t',U',V',A'];  % result
subplot(3,1,1);
    plot(r(:,1),r(:,2)); hold on;
    plot(r(:,1),r(:,3)); hold on;
subplot(3,1,2);
    plot(r(:,1),r(:,4)); hold on;
    plot(r(:,1),r(:,5)); hold on;
subplot(3,1,3);
    plot(r(:,1),r(:,6)); hold on;
    plot(r(:,1),r(:,7)); hold on;
    xlabel('t/second');
