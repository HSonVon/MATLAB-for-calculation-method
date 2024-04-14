function [soluong, diem_thapnhat, diem_caonhat, diem_trungbinh] = thong_ke_diem(diem)
    soluong = length(diem);
    diem_thapnhat = min(diem);
    diem_caonhat = max(diem,[],'all');
    diem_trungbinh = round(mean(diem),2);
end