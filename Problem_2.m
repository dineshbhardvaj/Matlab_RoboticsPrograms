%{
    Certain rotations are carried out about the axis of the fixed frame, first rotation about x-axis by 45o then about y-axis by 30o and finally about x-axis by 60o . Obtain the equivalent rotation matrix.

%}

% Given are RotX(45), RotY(30), RotX(60)
% so the rotations are about the axis of the fixed frame then we will Pre - multiply the things.

clc; % clear window
close all; % clear all functions and variables

rt = rotations; %object of class rotation, for this file rotation.m should be in same project folder.
t1=input('Enter the link angle 1=');
t2=input('Enter the link angle 2=');
t3=input('Enter the link angle 3=');
R = rt.xrot(t3)*rt.yrot(t2)*rt.xrot(t1);  % final rotation matrix equation 

disp('The Final Rotational matrix will be:');
fprintf("\n");
disp(R);

%disp(['The Final Rotational matrix will be: [' num2str(R(:).') ']']) ;
close all; % clear all functions and variables