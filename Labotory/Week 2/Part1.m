
syms x;
f(x) =@(x) x-sin(x)-0.25 ;
x = linspace(a,b,5000);
plot(x,f);
%%
a = f(2) ;             %Tinh f(2)
fprintf('Gia tri cua f(2) la %d\n', a);
d2(x)= diff(f,x,2) ;   %Tinh f''(x)
fprintf('Bieu thuc dao ham cap 2 cua f(x) la %s\n', d2(x)); 
h = d2(5);             %Tim gia tri f''(5)
fprintf('Gia tri cua dao ham cap 2 cua f(x) tai x =5 la %d\n', h);
a = -1;
b = 2;
