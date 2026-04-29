% Loading: Forces per roller
F_vert = 3; % lbf
F_lat = 0.6*F_vert; % lbf

% Geometry
bearing_roller_dist = 1.2;
roller_roller_dist = 1.15;
bearing_width = 0.5;
roller_width = 2.1;
bearing_motor_dist = 0.625;
roller_diameter = 1.5;

% Force Densities on each roller
F_vert_density = F_vert / roller_width;
F_lat_density = F_lat / roller_width;
T_motor = F_lat*roller_diameter;
T_density = F_lat_density*roller_diameter/2;

% Material Properties
% From Shigley's Mechanical Design
E = 30.0e6; % psi
S_ut = 64e3; % psi
I = pi/64*roller_diameter^4; % in^4
J = I/2;
radius = roller_diameter/2;


% X-Coordinates
x_bearing_1 = bearing_width/2;
x_roller_1_left = x_bearing_1 + bearing_roller_dist + bearing_width/2;
x_roller_1_right = x_roller_1_left + roller_width;
x_roller_2_left = x_roller_1_right + roller_roller_dist;
x_roller_2_right = x_roller_2_left + roller_width;
x_bearing_2 = x_roller_2_right + bearing_roller_dist + bearing_width/2;
x_motor = x_bearing_2 + bearing_width/2 + bearing_motor_dist;

% Set up loading
N = 2000;
x = linspace(0,x_motor,N)';

T = - T_density*(x-x_roller_1_left).*(x > x_roller_1_left) ...
    + T_density*(x-x_roller_1_right).*(x > x_roller_1_right) ...
    - T_density*(x-x_roller_2_left).*(x > x_roller_2_left) ...
    + T_density*(x-x_roller_2_right).*(x > x_roller_2_right) ...
    + T_motor*(x > x_motor);

V_y = F_vert*(x > x_bearing_1) ...
    - F_vert_density*(x-x_roller_1_left).*(x > x_roller_1_left) ...
    + F_vert_density*(x-x_roller_1_right).*(x > x_roller_1_right) ...
    - F_vert_density*(x-x_roller_2_left).*(x > x_roller_2_left) ...
    + F_vert_density*(x-x_roller_2_right).*(x > x_roller_2_right) ...
    + F_vert*(x > x_bearing_2);
V_z = F_lat*(x > x_bearing_1) ...
    - F_lat_density*(x-x_roller_1_left).*(x > x_roller_1_left) ...
    + F_lat_density*(x-x_roller_1_right).*(x > x_roller_1_right) ...
    - F_lat_density*(x-x_roller_2_left).*(x > x_roller_2_left) ...
    + F_lat_density*(x-x_roller_2_right).*(x > x_roller_2_right) ...
    + F_lat*(x > x_bearing_2);

% Integrate shear force to get bending moment
M_z = cumtrapz(x,V_y);
M_y = cumtrapz(x,V_z);
M_tot = sqrt(M_z.^2 + M_y.^2);

% Deflection: Integrate bending moment 

[~,centerindex] = min(abs(x - (x_bearing_2-x_bearing_1)/2));
slope_y = 1/(E*I) * cumtrapz(x,M_z);
slope_y = slope_y - slope_y(centerindex); % Enforce symmetry
slope_z = 1/(E*I) * cumtrapz(x,M_z);
slope_z = slope_z - slope_z(centerindex); % Enforce symmetry
slope_tot = sqrt(slope_y.^2+slope_z.^2);

[~,bearingindex] = min(abs(x - x_bearing_1));
delta_y = cumtrapz(x,slope_y);
delta_y = delta_y - delta_y(bearingindex); % Enforce zero displacement at bearings
delta_z = cumtrapz(x,slope_z);
delta_z = delta_z - delta_z(bearingindex);
delta_tot = sqrt(delta_y.^2+delta_z.^2);

% close all
figure(1)
xyloading = table(x,V_y,M_z,slope_y,delta_y);
xylabels = ["Shear (lb)", "Bending (lb-in)", "Slope (rad)", "Deflection (in)"];
stackedplot(xyloading,XVariable="x",DisplayLabels=xylabels,XLabel="x (in)");
title("Loading Diagram for the Axle in the xy-plane")
set(gca,fontname="IBM Plex Sans")

figure(2)
xzloading = table(x,V_z,M_y,slope_z,delta_z);
xzlabels = ["Shear (lb)", "Bending (lb-in)", "Slope (rad)", "Deflection (in)"];
stackedplot(xyloading,XVariable="x",DisplayLabels=xzlabels,XLabel="x (in)");
title("Loading Diagram for the Axle in the xz-plane")
set(gca,fontname="IBM Plex Sans")
figure(3)
combinedloading = table(x,T,M_tot,slope_tot,delta_tot);
combinedlabels = ["Torque (lb-in)", "Bending (lb-in)", "Slope (rad)", "Deflection (in)"];
stackedplot(combinedloading,Xvariable="x",DisplayLabels=combinedlabels,Xlabel="x (in)")
title("Superimposed Loading Diagram for the Axle")
set(gca,fontname="IBM Plex Sans")

max_slope = max(slope_tot);
max_deflection = max(delta_tot);

%% Yielding
S_e_unmodified = S_ut/2;
a = 2;
b = -0.217;
k_a = a*(S_ut/1000)^b;

k_b = (roller_diameter/0.3)^(-0.107);

S_e = k_a*k_b*S_e_unmodified;

M_m = 0;
[M_a,momentindex] = max(abs(M_tot));

T_m = T(momentindex)/2;
T_a = T_m;


sigma_m = M_m*radius/I;
sigma_a = M_a*radius/I;

tau_m = T_m*radius/J;
tau_a = T_a*radius/J;

vonmises_m = sqrt(sigma_m^2 + 3*tau_m^2);
vonmises_a = sqrt(sigma_a^2 + 3*tau_a^2);


goodman_safetyfactor = (vonmises_a/S_e + vonmises_m/S_ut)^(-1);
