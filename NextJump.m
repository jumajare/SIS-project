function E=NextJump(A,B)
global NumOfNodes
global NumOfStates
global endtime
%Determines next jump and jump time
%Updtates StatusVector
%A is the 

RateOutVector=sum(A,2)+sum(B,2);
RateJumpVector=RateOutVector.^(-1);
N=LeastTimetoJump(RateJumpVector);

  
 w=(ProbVector(N(2),A,B))
 
 
newState=randsample(NumOfStates,1,true,w);
U(1)=N(1); %node
U(2)=newState; %Next State
U(3)=N(2); %time to next jump
E=U;


end    



