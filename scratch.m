clc;
clear;
params
num_people = (0:0.5:200);
caloric_intake = (1300: 100: 3000);
resupply_rate = (30: 1: 1825);
num_equipment = (1: 1: 20);
stay_duration = (30: 5: 1825);

for i= 1:numel(num_people)
    farm_people(i) = cal_farm_size(num_people(i), 2000, 780);
    lab_people(i) = cal_lab_size(num_people(i), 4);
end
for i = 1:numel(caloric_intake)
    farm_cals(i) = cal_farm_size(50, caloric_intake(i), 780);
end
for i = 1:numel(resupply_rate)
    farm_supply(i) = cal_farm_size(50, 2000, resupply_rate(i));
end
for i = 1:numel(num_equipment)
    lab_equip(i) = cal_lab_size(10, num_equipment(i));
end

% fig(1) = figure(1);
% plot(num_people, farm_people);
% title("farm size vs. number of people");
% 
% fig(2) = figure(2);
% plot(caloric_intake, farm_cals)
% title("farm size vs. caloric intake");
% 
% fig(3) = figure(3);
% plot(resupply_rate, farm_supply)
% title("farm size vs. resupply rate");

fig(4) = figure(4);
plot(num_people, lab_people);
title("lab size vs. number of people");

fig(5) = figure(5);
plot(num_equipment, lab_equip);
title("lab size vs. number of equipment");
% 
% set(fig,'Units','Inches');
% pos = get(fig,'Position');
% set(fig,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',...
%     [pos(3), pos(4)])
% print(fig, '-dpdf', 'test.pdf');