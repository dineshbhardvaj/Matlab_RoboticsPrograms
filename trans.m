% Name :- Dinesh
%Bits ID:- 2021HT01077


classdef trans
   methods
       function z = trans_z(obj,c)
         z = [1,0,0,0;0,1,0,0;0,0,1,c;0,0,0,1];
      end
      function y = trans_y(obj,b)
         y = [1,0,0,0;0,1,0,b;0,0,1,0;0,0,0,1]
      end
      function x = trans_x(obj,a)
         x = [1,0,0,a;0,1,0,0;0,0,1,0;0,0,0,1]
      end
      function xyz = trans_xyz(obj,a,b,c)
         xyz = [1,0,0,a;0,1,0,b;0,0,1,c;0,0,0,1];
      end
   end
end