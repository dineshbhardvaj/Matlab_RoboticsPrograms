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

fw_kin = fw_knm;
fw_kin.planar(45,500,200);
close all; % clear all functions and variables