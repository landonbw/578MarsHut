clc;
clear;
params
x = (0:1:1825);
rise = 5;
transition_length = 20;
ymin = 7;
transition_start = 22;
y = cal_room_size(1, x);
y2 = 0.*x + (max_size)*.95;
y3 = 0.*x + min_size*1.05;
y4 = 0.*x + (min_size + del_size/2);
plot(x, y, x, y2, x, y3, x, y4)