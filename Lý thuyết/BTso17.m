%Viet ham kiem tra so nguyen to
function Result = BTso17(x);
%x = input('Enter a number: ');  
  check = 0;
if x <=1
       check = 0;
else
    for i=1:x
     if mod(x,i)==0
        check =check + 1; %Voi moi lan x chia het, tang bien check
     else
         check = check;
     end
     end
    end       
  if   check == 2 %check =2, la khi do x chia het cho i=1 va  i=x
            Result = 1;     %x la so nguyen to, tra ve gia tri 1
        else
         Result = 0;        %x khong phai so nguyen to, tra ve gia tri 0
  end      
  if   check == 2 %check =2, la khi do x chia het cho i=1 va  i=x
            disp('Day la so nguyen to')
        else
          disp('Khong phai la so nguyen to')
  end
  end
