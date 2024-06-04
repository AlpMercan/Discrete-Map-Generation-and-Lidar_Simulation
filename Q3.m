clc;clear;close all;
load('binary_map.mat', 'output_matrix');
%Inıtial Pos
robot_x = 50; %X_Pos
robot_y = 30; %Y_Pos
simulate_lidar(robot_x, robot_y, output_matrix);
function simulate_lidar(robot_x, robot_y, binary_map)
    max_range = 10; 
    num_beams = 360; 
    angle_increment = 2 * pi / num_beams; 
    [map_height, map_width] = size(binary_map);
    lidar_distances = max_range * ones(1, num_beams);
    for beam = 1:num_beams
        angle = (beam - 1) * angle_increment; 
        for r = 1:max_range
            x = round(robot_x + r * cos(angle));
            y = round(robot_y + r * sin(angle));

            if x > 0 && x <= map_width && y > 0 && y <= map_height
                if binary_map(y, x) == 1
                    lidar_distances(beam) = r;
                    break;
                end
            end
        end
    end
    %% Plot Properties
    detected_angles = (0:num_beams-1) * angle_increment;
    detected_ranges = lidar_distances < max_range;
    theta = detected_angles(detected_ranges);
    rho = lidar_distances(detected_ranges);
    %% Polar Plotting
    figure;
    polarplot(theta, rho, 'r.');
    title('Simulated Lidar Data');
    rlim([0 max_range]);
    %% Figure Plotting
    figure;
    imagesc(binary_map);
    colormap(gray);
    hold on;
    plot(robot_x, robot_y, 'bo', 'MarkerSize', 10, 'LineWidth', 3);
    
    for beam = 1:num_beams
        angle = (beam - 1) * angle_increment;
        range = lidar_distances(beam);
        if range < max_range
            end_x = robot_x + range * cos(angle);
            end_y = robot_y + range * sin(angle);
            plot([robot_x end_x], [robot_y end_y], 'r');
        end
    end
    
    hold off;
    title('Robot and Lidar ');
end
