% Viet chýõng trinh nhap vào ðiem so cua 1 sinh viên,
% xu?t ra màn hinh xep hang cua ban ðó
%Biet:
% Ðiem so < 0 hoac Ðiem so > 10: Yêu cau nhap lai
% 8.5 <= ðiem so <= 10: Gioi
% 7 <= ðiem so < 8.5: Khá
% 5.5 <= ðiem so < 7: Trung binh
% Ðiem so < 5.5: Yêu

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
