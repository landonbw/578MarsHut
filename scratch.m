clc;
clear;
params
x = (0:0.5:200);
for i= 1:numel(x)
    y(i) = cal_farm_size(x(i), 2500, 780);
end

fig = figure(1);
plot(x, y);
title("lab size vs. number of people");

set(fig,'Units','Inches');
pos = get(fig,'Position');
set(fig,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',...
    [pos(3), pos(4)])
print(fig, '-dpdf', 'test.pdf');