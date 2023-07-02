## Autor: Cami Borges Sena
## Data: 02 de julho de 2023
## Codigo para DFT simples em Octave

f = zeros(30,30); #Cria uma matriz 30x30 preenchida com zeros e a armazena na variavel f.
f(5:24,13:17)=1; #Define um retangulo dentro da matriz f, com valores igual a 1, delimitado pelas linhas 5 a 24 e colunas 13 a 17. 
#Isso cria uma imagem retangular branca no fundo preto.
imshow(f);
F =fft2(f); #Calcula a Transformada de Fourier bidimensional (DFT) da imagem f e armazena o resultado na variavel F
F2 = log(abs(F)); #Calcula o logaritmo do valor absoluto de cada elemento de F e armazena o resultado na variavel F2. 
#Essa etapa e realizada para visualizacao da magnitude do espectro de Fourier.
imshow(F2,[-14, 24]); #Mostra a imagem representada pela matriz F2, ajustando a escala de cores entre -14 e 24. 
#Isso ajuda a destacar as caracteristicas do espectro de Fourier.
colormap(jet); colorbar  #Define o mapa de cores para a funcao jet, que e uma escala de cores com transicao suave.


F2=fftshift(F);
F3=log(abs(F2));
imshow(F3,[-1, 5]);
colormap(jet); colorbar;
