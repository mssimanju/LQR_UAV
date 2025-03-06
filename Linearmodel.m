%Linear Model without Integrators
Wc=[0;0;0];
Vc=[0,0,0];
g=9.8;
m=0.254;
J=diag([2.7,3.3,5.4]);
Jinv=J^-1;
Ruc=eye(3);
a11=-Skew(Wc);
a12=eye(3);
a13=-Skew(Vc);
a21=zeros(3,3);
a22=Skew(Wc);
a23=Skew(Ruc*[0;0;g]);
a31=zeros(3,3);
a32=zeros(3,3);
a33=-Skew(Wc);
A=[ a11,a12,a13;
    a21,a22,a23;
    a31,a32,a33];
b11=[0;0;0];
b12=zeros(3,3);
b21=[0;0;-1/m];
b22=-Skew(Wc);%check this term
b31=[0;0;0];
b32=eye(3);
B=[ b11,b12;
    b21,b22;
    b31,b32];
C=eye(9);
D=zeros(9,4);
x0=[1,0,0,0,0,0,0,0,0]';%initial condition for linear model
Co=ctrb(A,B);
size(Co);
rank(Co);
if(min(size(Co))==rank(Co))
    disp('System is controllable')
else
    disp('System is not controllable')
end

Q=eye(9);
Q(7,7)=0.1;%roll
Q(8,8)=0.1;%pitch
R=eye(4)*0.001;
K=lqr(A,B,Q,R);
%Try to remember what are Q and R
eig(A-B*K);

%System with integrators
Ai=[A,zeros(9,4);
    eye(3),zeros(3,10);
    zeros(1,6),[0,0,1] zeros(1,4)];
Bi=[B;
    zeros(4,4)];

Co=ctrb(Ai,Bi);
size(Co);
rank(Co);
if(min(size(Co))==rank(Co))
    disp('System is controllable')
else
    disp('System is not controllable')
end

Qi=eye(13);
%Weights setting 
Qi(7,7)=0.1;
Qi(8,8)=0.1;
% the integrater terms, just need to be stabilized
Qi(10,10)=0.1;
Qi(11,11)=0.1;
Qi(12,12)=0.1;
Qi(13,13)=0.1;
Ri=eye(4)*0.001;
Ki=lqr(Ai,Bi,Qi,Ri);

windforce=[1;1;0];