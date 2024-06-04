# Discrete-Map-Generation-using-Fixed-Cell-Decomposition

This code generates a discrete occupancy grid map from the HW3data.mat file in Matlab.

Input:

    HW3data.mat file containing segmented wall/obstacle data (x, y coordinates, obstacle ID)

Assumptions:

    All obstacles are static
    Single data point within a cell indicates occupied space

Output:

    Two representations of the environment map:
        Binary image for visualization
        100 x 100 binary occupancy grid map

Functionality:

    Loads data from HW3data.mat (x, y coordinates, obstacle IDs)
    Creates a 100 x 100 fixed-cell grid map
    Iterates through data points
    Marks cells as occupied if any data point falls within them
    Generates a binary image with occupied cells visualized
    Returns both the binary image and the occupancy grid map

Benefits:

    Converts raw obstacle data into a usable map format
    Suitable for robot path planning and localization algorithms
![Q3_Robots_moved_position_and_Lidar_on_polarmap](https://github.com/AlpMercan/Discrete-Map-Generation-using-Fixed-Cell-Decomposition/assets/112685013/2843829f-a7dc-459e-b6c4-e8856541927b)
![Q3_Robots_moved_position_and_Lidar_on_Map](https://github.com/AlpMercan/Discrete-Map-Generation-using-Fixed-Cell-Decomposition/assets/112685013/eb1fdcc0-c186-4603-b4f1-01c1a7f556fc)
![Q3_Robots_centered_position_and_Lidar_on_polarmap](https://github.com/AlpMercan/Discrete-Map-Generation-using-Fixed-Cell-Decomposition/assets/112685013/40c15498-532e-4513-9d0d-4db59ef40d1b)
![Q3_Robots_centered_position_and_Lidar_on_Map](https://github.com/AlpMercan/Discrete-Map-Generation-using-Fixed-Cell-Decomposition/assets/112685013/97b298ab-f8c9-45ab-956c-ee79f22fadf9)


