% Name :- Dinesh
%Bits ID:- 2021HT01077


%{
Frame A having a Point [2 4 6]T is rotated about the x-axis by an angle of 60o followed by a translation of [7 5 7]T about the new frame. 
Obtain the transformation matrix T. 

%}

%Given 

clc; % clear window
close all; % clear all functions and variables

Rx = 60;


 
tr = trans; %from translation matrix
hr = homo_rot; %from homogeneous rotation matrix

T1 = tr.trans_xyz(7,5,7); % converting point vectors Q into translation matrix.

P = [2;4;6;1]; % converting point vectors P into translation matrix.

R = hr.xrot(60);

disp('The Final Transformation matrix will be:');
fprintf("\n");
% because we have to find the translation about the new frame we will do post multiply. 
T = R*T1*P;
disp(T);


close all; % clear all functions and variables