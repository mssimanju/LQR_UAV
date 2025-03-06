function Rmat = RPY2Rmat(L)
phi=L(1);
theta=L(2);
psi=L(3);

r11=cos(theta)*cos(psi);
r12=sin(phi)*sin(theta)*cos(psi)-cos(psi)*sin(psi);
r13=sin(phi)*sin(psi)+cos(psi)*sin(theta)*cos(psi);
r21=cos(theta)*sin(psi);
r22=cos(phi)*cos(psi)+sin(phi)*sin(theta)*sin(psi);
r23=cos(phi)*sin(theta)*sin(psi)-sin(phi)*cos(psi);
r31=-sin(theta);
r32=sin(phi)*cos(theta);
r33=cos(phi)*cos(theta);
Rmat =[r11,r12,r13;
       r21,r22,r23;
       r31,r32,r33];
end

