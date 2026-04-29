d = .000889 ; % Wire Diameter .035 in in m

OD = .0127 % Outer Spring Diameter .5in in m
D = OD - d;

C = D/d; %Spring Index 

%Edurance Strength Components%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S_sa = 2.41e8; %in Pa

S_sm = 3.79e8; %in Pa

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

K_B = (4*C +2)/(4*C - 3); %Bergsträsser Factor

S_ut = 5.85e8; %Ultimate Tensile Stress 

S_su = .67*S_ut; %Ultimate Shear Strength 

S_se = ((S_sa)/(1-((S_sm)/(S_su))));

F_m = 6.67233; %1.5 lbf in N

Compression = X; %in mm (change out with varying compressions) 

F_a = .718*Compression; %.718 N/mm


tau_a = K_B*(8*F_a*D)/(pi*d^3); %Shear Stress Amplitude 

tau_m = K_B*(8*F_m*D)/(pi*d^3); % Mean Shear Stress

n_f = (tau_a/(S_se)+ tau_m/(S_su))^(-1)
