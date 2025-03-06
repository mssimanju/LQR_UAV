function [dRcdt,Wc] = Tragenerator1(Rc,t)

Wc=[0;0;0];
if((t>=19.5)&&(t<=20.5))
    Wc=[0;0;pi/2];
end
if((t>=39.5)&&(t<=40.5))
    Wc=[0;0;pi/2];
end
if((t>=19.5)&&(t<=20.5))
    Wc=[0;0;pi/2];
end

end

