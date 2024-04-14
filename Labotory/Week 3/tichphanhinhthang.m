function y = tichphanhinhthang(f,a,b,N)
h = (b-a)/N;
ft = 0;
    for i=1:(N-1)
       ft = ft + f(a +i*h);
    end
    y = h/2*(f(a) + f(b) + 2*ft);
   % I = integral(f,a,b);
    fprintf('\n Gia tri tich phan hinh thang la %f \n', y);
    %fprintf('\n Gia tri sai so voi ham integral la %f \n',abs(y - I));
end