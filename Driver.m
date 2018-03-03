clc;
clear;
input = csvread("FilledSpace.csv", 1, 0);
n_people = input(:, 1);
calories = input(:, 2);
resupply_rate = input(:, 3);
n_equip = input(:, 4);
duration = input(:, 5);
for i = 1:numel(n_people)
    farm(i) = cal_farm_size(n_people(i), calories(i), resupply_rate(i));
    lab(i) = cal_lab_size(n_people(i), n_equip(i));
    room(i) = cal_room_size(n_people(i), duration(i));
    storage(i) = cal_storage_space(n_people(i), resupply_rate(i), calories(i));
end
output = input;
output(:, end+1) = farm;
output(:, end+1) = lab;
output(:, end+1) = room;
output(:, end+1) = storage;

csvwrite("results.csv", output)
% nPeople, calories, resupplyRate, nEquip, Duration, farm, lab, room, storage