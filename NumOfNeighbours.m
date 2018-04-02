function a=NumOfNeighbours(i,j,A,S)
global NumOfNodes
count=0;
%walks along adjacecy/status matrix checks if neighbour and if status j
for k=1:NumOfNodes
   if A(i,k)==1 && S(k)==j
       count=count+1;
        else         
   end   
end
    a=count;
end