# Discrete-Map-Generation-using-Fixed-Cell-Decomposition

Discrete Map Generation using Fixed Cell Decomposition

This MATLAB script generates a 100x100 occupancy grid map of a static environment with obstacles from the HW3data.mat file.

Input:

    HW3data.mat: A MATLAB file containing obstacle data (x-coordinates in map_x, y-coordinates in map_y, and obstacle IDs in the index).

Output:

    occupancy_grid: A 100x100 binary image representing the map, where 0 indicates free space and 1 indicates occupied space.
    occupancy_matrix: A 100x100 binary matrix corresponding to the occupancy_grid image.

Functionality:

    Load Obstacle Data: Loads the map_x, map_y, and obstacle IDs from HW3data.mat.
    Cell Decomposition: Creates a 100x100 grid representing the environment.
    Occupancy Determination: Iterates through each cell:
        If any obstacle point falls within a cell, the cell is marked as occupied (1) in both occupancy_grid and occupancy_matrix.
        Otherwise, the cell is marked as free (0).
Simulating Lidar Data in Discrete Maps

This script simulates lidar data for a robot positioned within the generated map (from Question 2).

Input:

    robot_x: The robot's x-coordinate.
    robot_y: The robot's y-coordinate.
    occupancy_grid: The 100x100 occupancy grid map.
    max_range: The maximum range (in cells) that the lidar can detect.

Output:

    lidar_data: A list of distances to obstacles encountered by the lidar along a 360-degree sweep.
    Visualization (optional): A plot of the lidar data overlaid on the map.

Functionality:

    Iterate Over Scan Angles: Steps through a range of angles representing the lidar sweep (e.g., 0 to 359 degrees).
    Raycasting: For each angle:
        Calculates the ray direction based on the angle and robot's orientation.
        Casts a ray from the robot's position until it hits an obstacle or reaches the maximum range.
        Records the distance to the obstacle in the lidar_data list.
    Considers obstacles between the robot and the detected obstacle for occlusion (optional).
    
![Q2_Map](https://github.com/AlpMercan/Discrete-Map-Generation-using-Fixed-Cell-Decomposition/assets/112685013/d176d645-8aab-4e6b-97c9-2b1d0e15e281)

![Q3_Robots_moved_position_and_Lidar_on_polarmap](https://github.com/AlpMercan/Discrete-Map-Generation-using-Fixed-Cell-Decomposition/assets/112685013/2843829f-a7dc-459e-b6c4-e8856541927b)
![Q3_Robots_moved_position_and_Lidar_on_Map](https://github.com/AlpMercan/Discrete-Map-Generation-using-Fixed-Cell-Decomposition/assets/112685013/eb1fdcc0-c186-4603-b4f1-01c1a7f556fc)
![Q3_Robots_centered_position_and_Lidar_on_polarmap](https://github.com/AlpMercan/Discrete-Map-Generation-using-Fixed-Cell-Decomposition/assets/112685013/40c15498-532e-4513-9d0d-4db59ef40d1b)
![Q3_Robots_centered_position_and_Lidar_on_Map](https://github.com/AlpMercan/Discrete-Map-Generation-using-Fixed-Cell-Decomposition/assets/112685013/97b298ab-f8c9-45ab-956c-ee79f22fadf9)


