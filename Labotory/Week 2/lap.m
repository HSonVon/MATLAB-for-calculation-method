function [nghiem, solanlap] = lap(f,a,b,saiso)
x0 = a;
x1 = b;    
lap=0;
    for x = linspace(x0,x1,80000) 
      g = f(x) + x; 
   lap = lap + 1;
    if abs(x - g)  < saiso  
     break 
    end
    end
  nghiem = x;
  solanlap = lap;
  fprintf('Gia tri nghiem cua f(x) la %d\n',nghiem);
  fprintf('So lan lap cua phuong phap lap la %d\n lan',solanlap ); 
end
