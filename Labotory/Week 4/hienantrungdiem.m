function [x,y] = hienantrungdiem(fxy,x0,xn,y0,N) 
h = (xn - x0)/N ;
     y(1) = y0;  
    % x(1) = x0;
    x = x0:h:xn ;
    for i = 1:N
     y(i+1) = y(i) + h*fxy(x(i), y(i));  
     y(i+1) = y(i) + (h/2)*fxy(x(i)+h/2, y(i+1));
    end
    %figure(2);
    %plot(x, y, 'r-')
    %xlabel('Truc x')
    %ylabel('Truc y')
    %grid on       
end