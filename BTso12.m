% Viet ch��ng trinh nhap v�o �iem so cua 1 sinh vi�n,
% xu?t ra m�n hinh xep hang cua ban ��
%Biet:
% �iem so < 0 hoac �iem so > 10: Y�u cau nhap lai
% 8.5 <= �iem so <= 10: Gioi
% 7 <= �iem so < 8.5: Kh�
% 5.5 <= �iem so < 7: Trung binh
% �iem so < 5.5: Y�u

diem = input('\nNhap diem cua sinh vien: ');
    if ((8.5 <= diem)&& (diem <= 10))
        disp('Sinh vien loai gioi')
    else if ((7 <= diem)&& (diem < 8.5))
        disp('Sinh vien loai kha')
        else if (5.5 <= diem)&& (diem <7)
        disp('Sinh vien loai Trung binh')
            else if  (diem < 5.5)
        disp('Sinh vien loai Yeu')
                else
       disp('Xin moi nhap lai')
                end
            end
        end
    end
