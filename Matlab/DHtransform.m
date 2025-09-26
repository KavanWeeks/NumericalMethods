% Define symbolic variables
syms theta1 d2 theta3 L1

% DH parameters table:
% Joint 1: alpha0=0, a0=0, d1=0, theta1=theta1
% Joint 2: alpha1=0, a1=L1, d2=d2, theta2=0
% Joint 3: alpha2=90°, a2=0, d3=0, theta3=theta3

% Transformation matrix from frame 0 to frame 1
T01 = [cos(theta1), -sin(theta1), 0, 0;
       sin(theta1),  cos(theta1), 0, 0;
       0,           0,           1, 0;
       0,           0,           0, 1];

% Transformation matrix from frame 1 to frame 2
T12 = [0, -1, 0, 0;
       0, 0, 1, d2;
       -1, 0, 0, 0;
       0, 0, 0, 1];

% Transformation matrix from frame 2 to frame 3
T23 = [cos(theta3), -sin(theta3), 0, 0;
       0,           0,           1, 0;
       sin(theta3), -cos(theta3), 0, 0;
       0,           0,           0, 1];

% Calculate overall transformation from base (frame 0) to end effector (frame 3)
T02 = T01 * T12;
T03 = T02 * T23;

% Display the results
disp('Transformation matrix from frame 0 to frame 1 (T01):')
pretty(T01)

disp('Transformation matrix from frame 1 to frame 2 (T12):')
pretty(T12)

disp('Transformation matrix from frame 2 to frame 3 (T23):')
pretty(T23)

disp('Overall transformation matrix from frame 0 to frame 3 (T03):')
pretty(T03)

% Extract position and orientation components
position = T03(1:3, 4);
rotation_matrix = T03(1:3, 1:3);

disp('End effector position:')
pretty(position)

disp('End effector orientation (rotation matrix):')
pretty(rotation_matrix)