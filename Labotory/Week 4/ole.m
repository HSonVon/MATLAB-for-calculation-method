function [x,y] = ole(fxy,x0,xn,y0,N)
h = (xn - x0)/N ;
     y(1) = y0; 
     x = x0:h:xn;
    for i = 1:(N)
      y(i+1) = y(i) + h*fxy(x(i), y(i));   
    end
   % figure(1);
   % plot(x, y, 'k-')
   % xlabel('Truc x')
   % ylabel('Truc y')
   % grid on 
end