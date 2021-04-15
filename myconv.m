function [y, ybeg,yend] = myconv(xbeg, xend, x, hbeg, hend, h)
% Bu fonksiyon YTÜ BM BLM3620 Sayısal İşaret İşleme 
% Dersi Kapsamında Sayın Doç. Dr. Gökhan BİLGİN'in 
% verdiği 1. ödevin çözümü amacıyla yazılmıştır.
% Konvolüsyon fonksiyonu gerçeklenmiştir
lenx = length(x);
lenh = length(h);
leny = lenx + lenh - 1;
%
ybeg = (xbeg+hbeg);
yend = (xend+hend);
y = zeros(1,leny);

x = [x,zeros(1,lenh-1)];
h = [h,zeros(1,lenx-1)];
for i=1:leny
    for j=1:i
        y(i) = y(i) + x(j) * h(i-j+1);
    end
end

end