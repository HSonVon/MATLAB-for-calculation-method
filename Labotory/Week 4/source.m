 %Cho phuong trinh vi phân sau: fxy = ?(?,?) = (? ? ?)? 
%?i?u ki?n ban ??u: ?(0) = 1 
% ? = 0.2 (?ng v?i N = 25) và 0 ? ? ? 5. 
 fxy = @(x,y)(1 - x)*y;
 y0 = 1;
 N = 100; x0 = 0; xn = 5; e = 0.001;
%[x,y] = ole(fxy,x0,xn,y0,N) ;
%[x,y] = hienantrungdiem(fxy,x0,xn,y0,N);
[x,y] = hienanhinhthang(fxy,x0,xn,y0,N,e);
%RK(fxy,x0,xn,y0,N);
%    [x,y] = Cau5(fxy,x0,xn,y0,N,e)
