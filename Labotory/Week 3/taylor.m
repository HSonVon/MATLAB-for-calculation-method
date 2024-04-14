function d1 = taylor(x_array, y_array, h, value_x)
    for i = 1:length(x_array)
        if( value_x == x_array(i))
            d1 = (y_array(i+1)- y_array(i))/h;
        end  
    end
fprintf('\n\nDao ham arcsin(x)tai x = 0.7 la %f\n\n',round(d1,3));
end