% Name :- Dinesh
%Bits ID:- 2021HT01077


classdef homo_rot
   methods
      function z = zrot(obj,x)
         z = [cosd(x),-sind(x),0,0;sind(x),cosd(x),0,0;0,0,1,0;0,0,0,1];
      end
      function y = yrot(obj,x)
         y = [cosd(x),0,sind(x),0;0,1,0,0;-sind(x),0,cosd(x),0;0,0,0,1];
      end
      function x = xrot(obj,x)
         x = [1,0,0,0;0,cosd(x),-sind(x),0;0,sind(x),cosd(x),0;0,0,0,1];
      end
        
   end
end 