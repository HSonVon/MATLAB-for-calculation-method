function [x,y] = hienanhinhthang(fxy,x0,xn,y0,N,e)
h = (xn - x0)/N ;
     yo(1,1) = y0;  
     x = x0:h:xn;
        for i = 1:N
      yo(1,i+1) = yo(1,i) + h*fxy(x(i), yo(1,i)) ;  
      for m = 2:Inf
          yo(m,i+1)= yo(1,i) + h/2 *(fxy(x(i), yo(1,i)) + fxy(x(i+1),yo(m-1,i+1)));
          if abs(yo(m,i+1) - yo(m-1,i+1)) <= e
              break 
          end  
      end
         end
      k = size(yo) ; lap = k(1) ;
      for h = k(2):-1:1
         for q = k(1):-1:1
             if yo(q,h) ~= 0
              y(1,h) = yo(q,h);
              break
             end
          end
      end
   
figure(3);
 fprintf('\nSo lan lap la %d \n',lap -1);
 plot(x,y, 'g-')
 xlabel('Truc x')
 ylabel('Truc y')
 grid on 
end
