% Name :- Dinesh
%Bits ID:- 2021HT01077

%{
    Obtain the position and orientation of the tool point P with respect to the base for the 2 DOF, RP planar manipulator shown in figure. 
    Consider joint angle 45 degrees and link (L1) length 500 mm and extension 200mm.
%}



clc; % clear window
close all; % clear all functions and variables
tr = trans; %from translation matrix
%given
O = [0,0,0,1]';
L1 = 500;
th1 = 45;
d = 200;


hr = homo_rot;
hr.xrot(90);
hr.zrot(90);

%equaiton for 2DOF Rotz (q1)*Transx(L1)*Rotz(90)* Rotx(90)*Transz(d1)*origin
P = hr.zrot(th1)*tr.trans_x(L1)*hr.zrot(90)*hr.xrot(90)*tr.trans_z(d)*O;
display(P);
close all; % clear all functions and variables