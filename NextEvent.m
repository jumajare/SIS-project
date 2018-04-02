function E=NextEvent(A,S,C)
global NonContactTransitions
global NumOfNodes
global NumOfStates
n=NumOfNodes;
m=NumOfStates;

%Counts the number of neighbours in each class
%N(i,j) number of 
%for j=1:NumOfStatuses
%   for i=1:LengthVectorOfNodes
%        N(i,j)=NumOfNeighbours(i,j);
%    end     
%end

%Determines the rate and direction caused by each class contact
%C specifies the rate of transition from state of node j to state k caused
%by contacts in state i
%NumOfNeighbours(j,i) number of neighbours of node j in state i
%T specifies the rate of transition of node j to state k
T=zeros(NumOfNodes,NumOfNodes);
for j=1:NumOfNodes
    for k=1:NumOfStates
        a=0;
        for i=1:NumOfStates
            a =C(S(j),k,i).*NumOfNeighbours(j,i,A,S)+a;
        end  
        T(j,k)=a;
    end
end  

%Non contact based transitions. T2 Specifies the rate of transition of node
%i into state k
T2=zeros(NumOfNodes,NumOfNodes);
for i=1:NumOfNodes
    b=S(i);
    for k=1:NumOfStates
         T2(i,k)=NonContactTransitions(b,k);
    end   
end   

E=NextJump(T,T2);

end