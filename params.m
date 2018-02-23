% parameters for room size calcs
min_size = 9.2903; %m^2
max_size = 13.9355; %m^2
del_size = max_size - min_size;
tran_start = 365; %days
tran_end = 1095; %days (4years)
tran_len = tran_end - tran_start;
center_offset = (tran_end - tran_start) / 2 + tran_start;
