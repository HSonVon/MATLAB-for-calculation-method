function [x,y] = Cau5(fxy,x0,xn,y0,N,e)
    [x,y1] = ole(fxy,x0,xn,y0,N) ;
    [x,y2] = hienantrungdiem(fxy,x0,xn,y0,N);
    [x,y3] = hienanhinhthang(fxy,x0,xn,y0,N,e);
    [x,y4] = RK(fxy,x0,xn,y0,N);
     
    figure(5) 
    plot(x, y1, 'k-');hold on ;
    plot(x, y2, 'r-'); hold on ;
    plot(x, y3,'g-'); hold on ;
    plot(x, y4,'b-');   
    grid on;
    xlabel('Truc x');
    ylabel('Truc y');
    legend('Euler','Trung diem','Hinh thang','RK')
end