%%%%%%%%%%%%%%% for ME5212/Hw_5_1%%%%%%%%%%%%%%%
% Software: MATLAB R2014a
% Author: Wenjin Tao
% Missouri S&T 
% Copyright(c) by Wenjin Tao

% Date: 10/27/2015

clear;clc;close all;
data4l = load('hw5-1-4l.result');
data4l = data4l(:,1:3);
data4l_17 = data4l([1,3,5,7,9,12,14,16,18,21,23,25,27,30,32,34,36],:);

data2q = load('hw5-1-2q.result');
data2q = data2q(:,1:3);
data2q_17 = data2q([1:9,11:18],:);

data4q = load('hw5-1-4q.result');
data4q = data4q(:,1:3);
data4q_17 = data4q([1,3,5,7,9,12,14,16,18,21,23,25,27,30,32,34,36],:);

plot(data4l(:,1),data4l(:,2),'^-');hold on;
plot(data2q(:,1),data2q(:,2),'o-');hold on;
plot(data4q(:,1),data4q(:,2),'*-');hold on;

figure(2);
% for i=1:16
%     dx(i) = (data4l_17(i+1,1)+data4l_17(i,1))/2;
%     
%     du(i) = (data4l_17(i+1,2)-data4l_17(i,2)) / (data4l_17(i+1,1)-data4l_17(i,1));
%     plot([data4l_17(i,1),data4l_17(i+1,1)],[du(i),du(i)],'^-');hold on;
%     
%     du2(i) = (data4q_17(i+1,2)-data4q_17(i,2)) / (data4q_17(i+1,1)-data4q_17(i,1));
% %     plot([data4q(i,1),data4q(i+1,1)],[du2(i),du2(i)],'k*--');hold on;
% end
% 
% plot(dx,du2,'k*-');hold on;
% 
% for i=1:16
%     dx3(i) = (data2q_17(i+1,1)+data2q_17(i,1))/2;
%     du3(i) = (data2q_17(i+1,2)-data2q_17(i,2)) / (data2q_17(i+1,1)-data2q_17(i,1));
% %     plot([data2q(i,1),data2q(i+1,1)],[du3(i),du3(i)],'ro--');hold on;
% end
% plot(dx3,du3,'ro-');hold on;

plot(data4l(:,1),data4l(:,3),'^-');hold on;

plot(data2q(:,1),data2q(:,3),'o-');hold on;

plot(data4q(:,1),data4q(:,3),'*-');hold on;