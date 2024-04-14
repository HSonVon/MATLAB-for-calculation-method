%Newton-Raphson
function [nghiem,solanlap] = tieptuyen(f,a,b,saiso)
    syms x ;
    fd1 = str2func(['@(x)' char(diff(f(x)))]);
    fd2 = str2func(['@(x)' char(diff(fd1(x)))]);
    lap = 0;
    x0 = a;
    nostop = 1;
temp1 = double(solve(diff(f(x)))); 
temp2 = double(solve(diff(fd1(x))));
%Kiem tra f'(x) co doi dau trong khoang phan li nghiem hay khong
 if ~isempty(temp1)
   for i=1:length(temp1)
      if (temp1(i)<=b) && (temp1(i)>=a)
disp('Ham f'' doi dau trong khoang phan li nghiem'); nostop=0;
nghiem = 'khong xac dinh'; solanlap = 'khong xac dinh'; break;
      end
   end
 end
%Kiem tra f"(x) co doi dau trong khoang phan li nghiem hay ko
  if ~isempty(temp2)
    for i=1:length(temp2)
       if (temp2(i)<=b) && (temp2(i)>=a)
disp('Ham f" doi dau trong khoang phan li nghiem'); nostop=0;
nghiem = 'khong xac dinh'; solanlap = 'khong xac dinh'; break;
       end
    end
  end
    if (nostop)
 while f(x0)*fd2(x0) <= 0 
     x0 = (x0 + b)/2;
 end
 fprintf('\n%d %d',f(x0)*fd2(x0),x0);
 for k = linspace(x0,b,10000) 
     lap = lap +1;
      i = k - f(k)/fd1(k);
      fprintf('\n%d %d ', i, k);
  if abs(i - k) < saiso  
    break
  end
  c = i;
 end
 nghiem = c;
 solanlap=lap;
 fprintf('\nGia tri nghiem cua f(x) la %d\n',nghiem);
  fprintf('So lan lap cua phuong phap tiep tuyen la %d\n lan',solanlap );
    end
end