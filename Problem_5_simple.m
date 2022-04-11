% Name :- Dinesh
%Bits ID:- 2021HT01077

%{
   Obtain the position and orientation of the tool point P with respect to the base for Cylindrical Arm, with L1 = 700,L2 =600, D2 = 100mm, D3 = 200mm, theta =45 degree.; 
%}



clc; % clear window
close all; % clear all functions and variables
tr = trans; %from translation matrix
%given
O = [0,0,0,1]';
L1 = 700;
L2 = 600;
th1 = 45;
d2 = 100;
d3 = 200;

hr = homo_rot;

%equaiton for 3Dof Cylinderical Arm 



while 1
    th1=input('Enter the theta angle 1= ');
    P = hr.zrot(th1)*tr.trans_z(L1)*tr.trans_z(d2)*hr.xrot(-90)*tr.trans_z(L2)*tr.trans_z(d3)*O;
    display(P);
    
    x1 = O;
    x11 = hr.zrot(th1)*tr.trans_z(L1)*O;
    x2 = hr.zrot(th1)*tr.trans_z(L1)*tr.trans_z(d2)*O;
    x3 = hr.zrot(th1)*tr.trans_z(L1)*tr.trans_z(d2)*hr.xrot(-90)*tr.trans_z(L2)*O;
    x4 = P;

    X = [x1(1),x11(1),x2(1),x3(1),x4(1)];
    Y = [x1(2),x11(2),x2(2),x3(2),x4(2)];
    Z = [x1(3),x11(3),x2(3),x3(3),x4(3)];

    plot3(X,Y,Z,'-bs','LineWidth',10,...
                       'MarkerEdgeColor','k',...
                       'MarkerFaceColor','r',...
                       'MarkerSize',30)
    
     hold on
     t=input('Do you want to continue (y/n)= ','s');
     if t == 'n'
        break
     end
end
%3d Plot

close all; % clear all functions and variables
