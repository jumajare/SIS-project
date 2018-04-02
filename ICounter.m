function count=ICounter(A,a)
counter=0;
for i=1:length(A)
if A(i)==a
    counter=counter+1;
end  
count=counter;
end
end    