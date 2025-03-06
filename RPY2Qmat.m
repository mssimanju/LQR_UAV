function Qmat = RPY2Qmat(L)
phi=L(1);
theta=L(2);
%psi=L(3);
q11=1;
q12=sin(phi)*tan(theta);
q13=cos(phi)*tan(theta);
q21=0;
q22=cos(phi);
q23=-sin(phi);
q31=0;
q32=sin(phi)/cos(theta);
q33=cos(phi)/cos(theta);

Qmat=[q11,q12,q13;
      q21,q22,q23;
      q31,q32,q33];
end

