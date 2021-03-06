% { PROBLEM_! The coordinates of point P in frame {1} are [3 2 1]T . 
    %The position vector P is rotated about the z-axis by 45o. 
    % Find the coordinates of point Q, the new position of point P. % }
    
    clc;
    close all;

    rt = rotations; %object of class rotation, for this file rotation.m should be in same project folder.
    
    %P = [3,2,1];  

    % entering Point P coordinates in matrix for P
    %m=input('row')
    %n=input('column')
    for i=1:3
        for j=1
            a(i,j)=input('P coordinates(x,y,z)-')
        end
    end
    P = reshape(a,3,1) % creating matrix from user input.

    % input from user for rotation angle, 
    t1=input('Enter the link angle with Z=') 
    
    Q = rt.zrot(t1) * P 
    clearvars a Q t1 rt P % clearing all variable
    %{ 
    
     // just for clarification adding comment on how we are getting
     rotation matrix
    
    classdef rotations
     methods
       function z = zrot(obj,x)
         z = [cosd(x),-sind(x),0;sind(x),cosd(x),0;0,0,1];
      end
      function y = yrot(obj,x)
         y = [cosd(x),0,sind(x);0,1,0;-sind(x),0,cosd(x)];
      end
      function x = xrot(obj,x)
         x = [1,0,0;0,cosd(x),-sind(x);0,sind(x),cosd(x)];
      end

     end
    end
    %}