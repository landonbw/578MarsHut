function [ size ] = cal_farm_size( num_people, caloric_intake,...
    resupply_rate )
%cal_farm_size calculates the number of square meters that need to be
% dedicated to farmland for the people living on mars.
% Num_people = number of people in the settlement (linear scaler)
% caloric_intake = average number of calories eaten per person per day (calories)
% resupply_rate = how often a resupply comes (30 - 1825 days)

params;
if resupply_rate < farm_time_cutoff
    size = 0;
else
    size = farm_per_person * num_people * (caloric_intake / base_calories);
end
end
