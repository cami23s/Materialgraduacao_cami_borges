#Autor: Cami Borges Sena
#Data de modificação: 02 de julho de 2023
#Codigo para DFT simples

f = zeros(30,30);
f(5:24,13:17)=1;
imshow(f);
F =fft2(f);
F2 = log(abs(F));
imshow(F2,[-14, 24]);
colormap(jet); colorbar


F2=fftshift(F);
F3=log(abs(F2));
imshow(F3,[-1, 5]);
colormap(jet); colorbar;
