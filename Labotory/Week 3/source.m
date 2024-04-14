%cau 1 
%y(x) = arcsin(x);
%h = 0.2;
value_x = 0.7;
x = [0.1 0.3 0.5 0.7 0.9];
y = [0.1002 0.3047 0.5236 0.7754 1.1198];
dathuc = lagrange(x,y, value_x);
%d1 = taylor(x,y,h,value_x);
%f = @(x) x.^3.*sin(x) ;
%a = 0; b =1; N = 10;
%y1 = tichphanhinhthang(f,a,b,N);
%y = tichphanSimpson(f,a,b,N);
%[y,h] = tichphanhinhthangvaSimpson(f,a,b);

 