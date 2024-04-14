function dathuc = lagrange(x_array, y_array)
n = length(x_array);
x_value = x_array;
y_value = y_array;
syms x;
p = 0;
for i= 1:n
  l = 1;
  for j = 1:n
      if i ~= j
          l = l *(x - x_value(j))/(x_value(i) - x_value(j));
      end
  end
 p = p + y_value(i)*l ; 
end
  dathuc=diff(p,x);
  h=dathuc(1)
  fprintf('\n\nDa thuc Lagrange sau khi dung ham simplify la \n%s \n\n',simplify(dathuc));
   fprintf('\n\nDa thuc Lagrange sau khi dung ham vpa la \n%s \n\n',vpa(dathuc));
   fprintf('\n\nDa thuc Lagrange sau khi dung ham vpa va simpify la \n%s \n\n',vpa(simplify(dathuc)));
end