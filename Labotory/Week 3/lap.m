function [x,sll] = lap(f,a,b,saiso)
    sll = 0;
while  abs(b-a) >= saiso
    c = (a + b)/2 ;
     sll = sll + 1;
    f(c);
    f(a);
    if f(a)*f(c) < 0
        b = c;
    else
        a = c;
    end
x = a ;
disp(sll);
disp(x);
end

end