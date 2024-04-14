function [nghiem,solanlap] = chiadoi(f,a,b,saiso)
    e = 1;
    solanlap = 0;
while  (e >= saiso)  
c = (a + b)/2 ;
    if f(c) * f(a) < 0
        b = c;
    else
        a = c;
    end
    e = b - a; 
    solanlap = solanlap + 1;
    fprintf('\n%d %d', a,b);
    if e < saiso 
        nghiem = a ;
    end 
end
  fprintf('Gia tri nghiem cua f(x) la %d\n', a);
  fprintf('So lan lap cua phuong phap chia doi la %d\n',solanlap );  
end