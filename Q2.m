%% Data Extraction
load('HW3data.mat'); 
x_coords = map_x;
y_coords = map_y;
obstacle_id = index;
grid_size = 100;
x_min = min(x_coords);
x_max = max(x_coords);
y_min = min(y_coords);
y_max = max(y_coords);

%% cell Properties
cell_width = (x_max - x_min) / grid_size;
cell_height = (y_max - y_min) / grid_size;
binary_matrix = zeros(grid_size, grid_size);

% Marking Cell
for i = 1:length(x_coords)
    x_idx = floor((x_coords(i) - x_min) / cell_width) + 1;
    y_idx = floor((y_coords(i) - y_min) / cell_height) + 1;
    x_idx = min(max(x_idx, 1), grid_size);
    y_idx = min(max(y_idx, 1), grid_size);
    binary_matrix(y_idx, x_idx) = 1;
end

binary_image = logical(binary_matrix);
figure;
imshow(binary_image);
title('Map');
output_matrix = binary_matrix;
output_image = binary_image;
save('binary_map.mat', 'output_matrix', 'output_image');
