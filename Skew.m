 function Su= Skew(u)
uz=u(3);uy=u(2);ux=u(1);
Su=[ 0,-uz, uy;
    uz,  0,-ux;
    -uy,ux,  0];
end

