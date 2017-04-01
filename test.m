% test mean value of depth 
depth1 =depthRead('21.png');
depth =depthRead('21.png');
[image_row,image_col]  = size(depth);
depth_temp =zeros (image_row, image_col);
for i=3:image_row-3
      for j=3:image_col-3
%%
% %method 1          
%                 b = depth(i-1:i+1, j-1:j+1);
%                depth(i,j) = sum(sum(b))/8;

%method 2 
                    b=depth(i-1:i+1,j);
                    depth_temp(i,j)=sum(sum(b))/3;
      end
end

depth = depth_temp;

% A= [1 2 3; 4 5 6; 7 8 9];
% B= A( 1:3 , 3); 
% B