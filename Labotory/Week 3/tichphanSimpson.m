function y = tichphanSimpson(f,a,b,N) 
h = (b-a)/N;
f1 = 0;
f2 = 0;
    for i=1:2:(N-1)
       f1 = f1 + f(a+ i*h);
    end
        for i=0:2:(N-1)
       f2 = f2 + f(a+ i*h);
        end
    y = h/3*(f(a) + f(b) + 4*f1 + 2*f2);
    %I = integral(f,a,b);
    fprintf('\n Gia tri tich phan Simpson la %f \n', y);
   % fprintf('\n Gia tri sai so voi ham integral la %f \n',abs(y - I) );
    
end