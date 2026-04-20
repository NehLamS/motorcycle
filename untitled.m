clear all; clc;
% === Chemins vers les fichiers ICE et BEV ===
file_ice = '/Users/lamri/Desktop/moto_code/ice_bigsport/0_100_0_brake_control/LastRun.csv';
file_bev = '/Users/lamri/Desktop/moto_code/bve_sprotTour/0_100_0_brake_control/LastRun.csv';
%file_ice = 'C:\Users\ibisc\Desktop\dynamique\result\ice_bigsport\0_100_0_brake_control_turn\LastRun.csv';
%file_bev = 'C:\Users\ibisc\Desktop\dynamique\result\bve_sprotTour\0_100_0_brake_control_turn\LastRun.csv';
% file_ice = 'C:\Users\ibisc\Desktop\dynamique\result\ice_bigsport\acceleration_in_turn\LastRun.csv';
% file_bev = 'C:\Users\ibisc\Desktop\dynamique\result\bve_sprotTour\acceleration_in_turn\LastRun.csv';

%file_ice = '/Users/lamri/Desktop/ANR/dynamique/result/ice_bigsport/brake_from_80_150N_FrontOnly/LastRun.csv';
%file_bev = '/Users/lamri/Desktop/ANR/dynamique/result/bve_sprotTour/brake_from_80_150N_FrontOnly/LastRun.csv';
% file_ice = '/Users/lamri/Desktop/ANR/dynamique/result/ice_bigsport/leantarget_30deg_100kmh/LastRun.csv';
% file_bev = '/Users/lamri/Desktop/ANR/dynamique/result/bve_sprotTour/leantarget_30deg_100kmh/LastRun.csv';

%file_ice = 'C:\Users\ibisc\Desktop\dynamique\result\ice_bigsport\brake_in_turn_80kmh_mu05_100N_10s\LastRun.csv';
% file_bev = 'C:\Users\ibisc\Desktop\dynamique\result\bve_sprotTour\brake_in_turn_80kmh_mu05_100N_10s\LastRun.csv';
% file_ice = 'C:\Users\ibisc\Desktop\dynamique\result\ice_bigsport\braking_distance_test\LastRun.csv';
% file_bev = 'C:\Users\ibisc\Desktop\dynamique\result\bve_sprotTour\braking_distance_test\LastRun.csv';
% file_ice = 'C:\Users\ibisc\Desktop\dynamique\result\ice_bigsport\const_radius_100kmh_10pcentbank\LastRun.csv';
% file_bev = 'C:\Users\ibisc\Desktop\dynamique\result\bve_sprotTour\const_radius_100kmh_10pcentbank\LastRun.csv';
% file_ice = 'C:\Users\ibisc\Desktop\dynamique\result\ice_bigsport\dlc_110_mu1_80N_3s\LastRun.csv';
% file_bev = 'C:\Users\ibisc\Desktop\dynamique\result\bve_sprotTour\dlc_110_mu1_80N_3s\LastRun.csv';

%  file_ice = '/Users/lamri/Desktop/ANR/dynamique/result/ice_bigsport/Full_throttle_accel_1p7_6spd_mod2/LastRun.csv';
%  file_bev = '/Users/lamri/Desktop/ANR/dynamique/result/bve_sprotTour/Full_throttle_accel_1p7_6spd_mod2/LastRun.csv';
% file_ice = '/Users/lamri/Desktop/ANR/dynamique/result/ice_bigsport/Full_throttle_accel_1p7_6spd_mod3/LastRun.csv';
% file_bev = '/Users/lamri/Desktop/ANR/dynamique/result/bve_sprotTour/Full_throttle_accel_1p7_6spd_mod3/LastRun.csv';
% file_ice = 'C:\Users\ibisc\Desktop\dynamique\result\ice_bigsport\Full_throttle_accel_1p7_6spd_mod4\LastRun.csv';
% file_bev = 'C:\Users\ibisc\Desktop\dynamique\result\bve_sprotTour\Full_throttle_accel_1p7_6spd_mod4\LastRun.csv';
% file_ice = '/Users/lamri/Desktop/ANR/dynamique/result/ice_bigsport/Full_throttle_accel_1p7_6spd_mod5/LastRun.csv';
% file_bev = '/Users/lamri/Desktop/ANR/dynamique/result/bve_sprotTour/Full_throttle_accel_1p7_6spd_mod5/LastRun.csv';
% file_ice = 'C:\Users\ibisc\Desktop\dynamique\result\ice_bigsport\Half_throttle_accel_AT_7spd_mu05\LastRun.csv';
% file_bev = 'C:\Users\ibisc\Desktop\dynamique\result\bve_sprotTour\Half_throttle_accel_AT_7spd_mu05\LastRun.csv';

% file_ice = '/Users/lamri/Desktop/ANR/dynamique/result/ice_bigsport/impulse_stter_torque_70kmh/LastRun.csv';
% file_bev = '/Users/lamri/Desktop/ANR/dynamique/result/bve_sprotTour/impulse_stter_torque_70kmh/LastRun.csv';

% file_ice = 'C:\Users\ibisc\Desktop\dynamique\result\ice_bigsport\impulse_stter_torque_70kmh\LastRun.csv';
% file_bev = 'C:\Users\ibisc\Desktop\dynamique\result\bve_sprotTour\impulse_stter_torque_70kmh\LastRun.csv';
% file_ice = 'C:\Users\ibisc\Desktop\dynamique\result\ice_bigsport\Jturn\LastRun.csv';
% file_bev = 'C:\Users\ibisc\Desktop\dynamique\result\bve_sprotTour\Jturn\LastRun.csv';

% file_ice = '/Users/lamri/Desktop/ANR/dynamique/result/ice_bigsport/leantarget_30deg_100kmh/LastRun.csv';
% file_bev = '/Users/lamri/Desktop/ANR/dynamique/result/bve_sprotTour/leantarget_30deg_100kmh/LastRun.csv';

% file_ice = 'C:\Users\ibisc\Desktop\dynamique\result\ice_bigsport\Sine_bumps_inphase\LastRun.csv';
% file_bev = 'C:\Users\ibisc\Desktop\dynamique\result\bve_sprotTour\Sine_bumps_inphase\LastRun.csv';
% file_ice = 'C:\Users\ibisc\Desktop\dynamique\result\ice_bigsport\slalom_40kmh_7spd\LastRun.csv';
% file_bev = 'C:\Users\ibisc\Desktop\dynamique\result\bve_sprotTour\slalom_40kmh_7spd\LastRun.csv';
%file_ice = 'C:\Users\ibisc\Desktop\dynamique\result\ice_bigsport\step_steer_80kmh\LastRun.csv';
%file_bev = 'C:\Users\ibisc\Desktop\dynamique\result\bve_sprotTour\step_steer_80kmh\LastRun.csv';

% === Chargement des données ===
data_ice = readtable(file_ice);
data_bev = readtable(file_bev);

% === Extraction des variables ===
t_ice = data_ice.Time;
t_bev = data_bev.Time;

% === Extraction des variables avec noms exacts ===
vx_ice = data_ice.Vx;
vx_bev = data_bev.Vx;
vy_ice = data_ice.Vy;  
vy_bev = data_bev.Vy;
ax_ice = data_ice.Ax_SM;       
ax_bev = data_bev.Ax_SM;
ay_ice = data_ice.Ay_SM; 
ay_bev = data_bev.Ay_SM;
roll_ice = data_ice.Roll;  
roll_bev = data_bev.Roll;
yaw_ice = data_ice.Yaw;    
yaw_bev = data_bev.Yaw;
steer_ice = data_ice.Steer; 
steer_bev = data_bev.Steer; 
CmpS_1_ice = data_ice.CmpS_1;  
CmpS_1_bev = data_bev.CmpS_1;
CmpS_2_ice = data_ice.CmpS_2;   
CmpS_2_bev = data_bev.CmpS_2;

Fx_1_ice = data_ice.Fx_1;
Fx_1_bev = data_bev.Fx_1;
Fx_2_ice = data_ice.Fx_2;     
Fx_2_bev = data_bev.Fx_2;
Fy_1_ice = data_ice.Fy_1;
Fy_1_bev = data_bev.Fy_1;
Fy_2_ice = data_ice.Fy_2;     
Fy_2_bev = data_bev.Fy_2;
Fz_1_ice = data_ice.Fz_1;
Fz_1_bev = data_bev.Fz_1;
Fz_2_ice = data_ice.Fz_2;     
Fz_2_bev = data_bev.Fz_2;

Kappa_1_ice = data_ice.Kappa_1;
Kappa_1_bev = data_bev.Kappa_1;
Kappa_2_ice = data_ice.Kappa_2;  
Kappa_2_bev = data_bev.Kappa_2;
Alpha_1_ice = data_ice.Alpha_1;  
Alpha_1_bev = data_bev.Alpha_1;
Alpha_2_ice = data_ice.Alpha_2;  
Alpha_2_bev = data_bev.Alpha_2;

M_Str_In_ice = data_ice.M_Str_In; 
M_Str_In_bev = data_bev.M_Str_In;
My_Bk_1_ice = data_ice.My_Bk_1; 
My_Bk_1_bev = data_bev.My_Bk_1;
My_Bk_2_ice = data_ice.My_Bk_2; 
My_Bk_2_bev = data_bev.My_Bk_2;
My_DR_1_ice = data_ice.My_DR_1; 
My_DR_1_bev = data_bev.My_DR_1;
My_DR_2_ice = data_ice.My_DR_2;    
My_DR_2_bev = data_bev.My_DR_2;
M_Trans_ice = data_ice.M_Trans;  % Trans. output shaft torque
M_Trans_bev = data_bev.M_Trans;
PwrEngAv_ice = data_ice.PwrEngAv; % Engine available power, Power available to the speed controller, assuming full throttle at the current crankshaft speed.
PwrEngAv_bev = data_bev.PwrEngAv;
PwrTrans_ice = data_ice.PwrTrans; % Transmission output shaft power
PwrTrans_bev = data_bev.PwrTrans; 
PwrWheel_ice = data_ice.PwrWheel; % Power to wheels from powertrain
PwrWheel_bev = data_bev.PwrWheel;
Pwr_SC_ice = data_ice.Pwr_SC;   % Power from Speed controller (no powertrain))
Pwr_SC_bev = data_bev.Pwr_SC;

% electric motor
A_Bttry_bev = data_bev.A_Bttry;  % Battery output current
EffBttry_bev = data_bev.EffBttry; % Electric battery efficiency
EffMotor_bev = data_bev.EffMotor; % Electric motor efficiency
M_MotCmd_bev = data_bev.M_MotCmd; %  Electric motor torque command
M_Motor_bev = data_bev.M_Motor;  % Electric motor output torque
PwrBttry_bev = data_bev.PwrBttry; % Electric battery required power
PwrMotDm_bev = data_bev.PwrMotDm; % Electric motor power demand
PwrMotor_bev = data_bev.PwrMotor; % Electric motor output power

% === Tracés ===

subplot(3,3,1); plot(t_ice, vx_ice, t_bev, vx_bev, 'r'); ylabel('Vx (m/s)'); grid on;
subplot(3,3,2); plot(t_ice, vy_ice, t_bev, vy_bev, 'r'); ylabel('Vy (m/s)'); grid on;
subplot(3,3,3); plot(t_ice, ax_ice, t_bev, ax_bev, 'r'); ylabel('Ax (m/s^2)'); grid on;
subplot(3,3,4); plot(t_ice, ay_ice, t_bev, ay_bev, 'r'); ylabel('Ay (m/s^2)'); grid on;
subplot(3,3,5); plot(t_ice, roll_ice, t_bev, roll_bev, 'r'); ylabel('roll deg)'); grid on;
subplot(3,3,6); plot(t_ice, yaw_ice, t_bev, yaw_bev, 'r'); ylabel('yaw deg)'); grid on;
subplot(3,3,7); plot(t_ice, steer_ice, t_bev, steer_bev, 'r'); ylabel('steer deg)'); grid on;
subplot(3,3,8); plot(t_ice, CmpS_1_ice, t_bev, CmpS_1_bev, 'r'); ylabel('Cmps1 mm)'); grid on;
subplot(3,3,9); plot(t_ice, CmpS_2_ice, t_bev, CmpS_2_bev, 'r'); ylabel('Cmps2 mm)'); grid on;

figure()
subplot(3,4,1); plot(t_ice, Fx_1_ice, t_bev, Fx_1_bev, 'r'); ylabel('Fx_1 (N)'); grid on;
subplot(3,4,2); plot(t_ice, Fx_2_ice, t_bev, Fx_2_bev, 'r'); ylabel('Fx_2 (N)'); grid on;
subplot(3,4,3); plot(t_ice, Fy_1_ice, t_bev, Fy_1_bev, 'r'); ylabel('Fy_1 (N)'); grid on;
subplot(3,4,4); plot(t_ice, Fy_2_ice, t_bev, Fy_2_bev, 'r'); ylabel('Fy_2 (N)'); grid on;
subplot(3,4,5); plot(t_ice, Fz_1_ice, t_bev, Fz_1_bev, 'r'); ylabel('Fz_1 (N)'); grid on;
subplot(3,4,6); plot(t_ice, Fz_2_ice, t_bev, Fz_2_bev, 'r'); ylabel('Fz_2 (N)'); grid on;
subplot(3,4,7); plot(t_ice, Kappa_1_ice, t_bev, Kappa_1_bev, 'r'); ylabel('kappa_1 (N)'); grid on;
subplot(3,4,8); plot(t_ice, Kappa_2_ice, t_bev, Kappa_2_bev, 'r'); ylabel('kappa_2 (N)'); grid on;
subplot(3,4,9); plot(t_ice, Alpha_1_ice, t_bev, Alpha_1_bev, 'r'); ylabel('alpha_1 (N)'); grid on;
subplot(3,4,10); plot(t_ice, Alpha_2_ice, t_bev, Alpha_2_bev, 'r'); ylabel('alpha_2 (N)'); grid on;

figure()
subplot(4,4,1); plot(t_ice, M_Str_In_ice, t_bev, M_Str_In_bev, 'r'); ylabel('\tau_R (N.m)'); grid on;
subplot(4,4,2); plot(t_ice, My_Bk_1_ice, t_bev, My_Bk_1_bev, 'r'); ylabel('\tau_{B1} (N.m)'); grid on;
subplot(4,4,3); plot(t_ice, My_Bk_2_ice, t_bev, My_Bk_2_bev, 'r'); ylabel('\tau_{B2} (N.m)'); grid on;
subplot(4,4,4); plot(t_ice, My_DR_1_ice, t_bev, My_DR_1_bev, 'r'); ylabel('\tau_{D1} (N.m)'); grid on;
subplot(4,4,5); plot(t_ice, My_DR_2_ice, t_bev, My_DR_2_bev, 'r'); ylabel('\tau_{D2} (N.m)'); grid on;
subplot(4,4,6); plot(t_ice, M_Trans_ice, t_bev, M_Trans_bev, 'r'); ylabel('\tau_T (N.m)'); grid on;
subplot(4,4,7); plot(t_ice, PwrEngAv_ice, t_bev, PwrEngAv_bev, 'r'); ylabel('P_e (KW)'); grid on;
subplot(4,4,8); plot(t_ice, PwrTrans_ice, t_bev, PwrTrans_bev, 'r'); ylabel('P_T (KW)'); grid on;
subplot(4,4,9); plot(t_ice, PwrWheel_ice, t_bev, PwrWheel_bev, 'r'); ylabel('P_W (KW)'); grid on;
subplot(4,4,10); plot(t_ice, Pwr_SC_ice, t_bev, Pwr_SC_bev, 'r'); ylabel('P_{SC} (KW)'); grid on;
subplot(4,4,11); plot(t_bev, A_Bttry_bev, 'r'); ylabel('I_{batt} (A)'); grid on;
subplot(4,4,12); plot(t_bev, EffBttry_bev, 'r', t_bev, EffMotor_bev, 'r-.'); ylabel('\eta_{batt,mot} (A)'); grid on;
subplot(4,4,13); plot(t_bev, M_MotCmd_bev, 'r', t_bev, M_Motor_bev, 'r-.'); ylabel('\tau_{cmd,out} (N.m)'); grid on;
subplot(4,4,14); plot(t_bev, PwrBttry_bev, 'r'); ylabel('P_{batt,req} (KW)'); grid on;
subplot(4,4,15); plot(t_bev, PwrMotDm_bev, 'r', t_bev, PwrMotor_bev, 'r-.'); ylabel('P_{mot,req,out} (KW)'); grid on;