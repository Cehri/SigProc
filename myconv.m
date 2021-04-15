function [y, ybas,ybit] = myconv(xbas, xbit, x, hbas, hbit, h)
% Bu fonksiyon YTÜ BM BLM3620 Sayısal İşaret İşleme 
% Dersi Kapsamında Sayın Doç. Dr. Gökhan BİLGİN'in 
% verdiği 1. ödevin çözümü amacıyla yazılmıştır.
lenx = length(x);
lenh = length(h);
flh = flip(h);

for i = 1: (lenx + lenh - 1)
    %
end
y = i;
ybas = (xbas+hbas);
ybit = (xbit+hbit-1);
end