% Name :- Dinesh
%Bits ID:- 2021HT01077

classdef fw_knm
   methods
       function pl = planar(obj,th1,L1,d)
        clc; % clear window
        close all; % clear all functions and variables
        tr = trans; %from translation matrix
        hr = homo_rot; % from homogeneous rotation matrix object
        %given
        O = [0,0,0,1]';
        %equaiton for 2DOF Rotz (q1)*Transx(L1)*Rotz(90)* Rotx(90)*Transz(d1)*origin
        pl = hr.zrot(th1)*tr.trans_x(L1)*hr.zrot(90)*hr.xrot(90)*tr.trans_z(d)*O;
        display(pl);
        close all; % clear all functions and variable  
       end
       
       function cl = cylindrical_3dof(obj,th1,L1,,L2,d1,d2)
        clc; % clear window
        close all; % clear all functions and variables
        tr = trans; %from translation matrix
        hr = homo_rot; % from homogeneous rotation matrix object
        %given
        O = [0,0,0,1]';
        %equaiton for 2DOF Rotz (q1)*Transx(L1)*Rotz(90)* Rotx(90)*Transz(d1)*origin
        pl = hr.zrot(th1)*tr.trans_x(L1)*hr.zrot(90)*hr.xrot(90)*tr.trans_z(d)*O;
        display(pl);
        close all; % clear all functions and variable  
      end

   end
end