function dathuc = lagrange(x_array, y_array, value_x)
n = length(x_array);
x_value = x_array;
y_value = y_array;
syms f(x);
p = 0;
for i= 1:n
    l = 1;
    for j = 1:n
        if i ~= j
l = l *(x -x_value(j))/(x_value(i) -x_value(j));
        end
    end
p = p + y_value(i)*l ;
end
   f(x) = diff(p,x,1);
   dathuc = f(value_x);
   fprintf('Gia tri cua dao ham arcsin(x)tai x = %f la %f\n',value_x, dathuc);
end