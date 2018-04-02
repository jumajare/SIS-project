function R=Rnot(A)
U=A;
global gamma 
global beta
N=length(U);
syms z theta
G=pgfbuilder(U,N)
vpa(subs(G,z,1)) %Check P.G.F
dG=diff(G,z); %P.G.F first derivative
ddG=diff(dG,z);
g1=(subs(dG,z,theta)); %Psi'(thetainf) 
g0=vpa(subs(dG,z,1)) %Psi'(1) average degree check
E=(vpa(subs(ddG,z,1))/vpa(subs(dG,z,1)))
rnot=(((beta)/(beta+gamma))*(vpa(subs(ddG,z,1))/vpa(subs(dG,z,1))))%%Miller first wave R_0
eqn=theta==(gamma/(gamma+beta))+beta*g1/((gamma+beta)*g0);%%Equation for theta_infinity
thetainf=mean(vpasolve(eqn,theta,[0,0.99999]));%This solves final size equation
Rec=subs(G,z,thetainf)
R=[rnot,Rec]
end  
