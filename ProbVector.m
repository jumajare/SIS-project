function E=ProbVector(a,A,B)
global NumOfStates
global NumOfNodes 
if a>=1 && a<=NumOfNodes
C=A+B;
size(C);
total=sum(C(a,1:NumOfStates))
for i=1:NumOfStates
v(i)=C(a,i)/total;
end
E=v;
else
    E=0;
end

end