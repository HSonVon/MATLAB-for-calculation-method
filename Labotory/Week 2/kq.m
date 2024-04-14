a = [1,1,-2,1;  1,-3,1,1;  4,-1,-1,-1;  4,3,-4,-1];
%a= [1,1,-2,1,1;  1,-3,1,1,0;  4,-1,-1,-1,1;  4,3,-4,-1,2];
b = [1;0;1;2];
n=length(a); 
for j=1:n-1
    for i=j+1:n
        l=a(i,j)/a(j,j);
        for k=j:n
            a(i,k)=a(i,k)-l*a(j,k);
        end
        b(i)=b(i)-l*b(j);
    end
end


x=zeros(n,1);
x(n)=b(n)/a(n,n);
% if a(n,:)== zeros(1,n)
%     syms x(n);
%    % x() = t 
% end
if rank(a)~=rank([a b])
    fprintf('PT ko co nghiem thưc')
end
for i=3:-1:1
    for j=1+i:4
        b(i)= b(i)-a(i,j)*x(j);
    end
    x(i)=b(i)/a(i,i)
end

return
