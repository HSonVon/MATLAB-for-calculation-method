function [y,h] = tichphanhinhthangvaSimpson(f,a,b) 
    N = 50;
    y  = tichphanhinhthang(f,a,b,N);
    h  = tichphanSimpson(f,a,b,N); 
    I = integral(f,a,b);
    fprintf('\n Gia tri sai so cua tich phan hinh thang so voi ham integral la %f \n',abs(y - I));
    fprintf('\n Gia tri sai so cua tich phan Simpson voi ham integral la %f \n',abs(h - I) );
end