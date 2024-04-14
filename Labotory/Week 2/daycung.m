function [nghiem, solanlap] = daycung(f, a, b, saiso)
    solanlap = 0;
    e = 1;
        while 1
          solanlap = solanlap +1;
          c = (a*f(b)-b*f(a))/(f(b)-f(a));
          if f(c)*f(a) < 0
               b = c;
          elseif f(c)*f(a) > 0
               a = c;  
          else 
              if abs(e) < saiso
              break;
              end
          end
          e = a - b;
        end
     nghiem = c;
end