%%%Build Network%%%
%Specify Degree Distribution%
P=[0.2,0.1,0.25,0.23,0.22]
%%Specify Number of nodes%%
global NumOfNodes
NumOfNodes=100
%%Build Network%%
Q=randsample(length(P),NumOfNodes,true,P);
A=cm_net(Q)
%%% Build Graph %%%
G=graph(A)
%%% Model First Wave %%% 

%Use Script 'WrapperFirstWave'
h = plot(G,'EdgeColor','k','NodeColor','red','LineWidth',0.1,'MarkerSize',3,'EdgeAlpha',0.2)
h.NodeLabel={}
set(gca,'Visible','off')