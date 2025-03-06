function [Pe,Ve,Le,Lc,L] = NLT(Vc,Wc,Rc,Pc,V,W,R,P)
Rc2b=R'*Rc;
Ve=V-Vc;
Pe=R'*(P-Pc);
Re=Rc'*R;
L=Rmat2RPY(R)*180/pi;
Lc=Rmat2RPY(Rc)*180/pi;
Le=Rmat2rpy(Re);
end
