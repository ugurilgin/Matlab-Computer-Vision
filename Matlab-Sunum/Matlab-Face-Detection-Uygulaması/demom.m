clc; clear;
%Yuz algilama kutuphanesini dahil ediyoruz
faceDetector = vision.CascadeObjectDetector;
%Sekil olusturucu ile dikdortgen seklini olusturup renk ayarlar�n�
%yap�yoruz.
shapeInserter = vision.ShapeInserter('BorderColor','Custom','CustomBorderColor',[0 255 255]);
I = imread('faces.jpg');%Resmimizi aciyoruz
imshow(I);shg;%Resmi Gosteriyoruz
bbox = step(faceDetector, I);%Algilanan yuzleri diziye ekliyoruz
% Alg�lanan y�zlere kare �iziliyor
I_faces = step(shapeInserter, I, int32(bbox));%Algilanan yuzlerin etrafina dikdortgen ciziyoruz
imshow(I_faces), title('Alg�lanan Y�zler');%Algilanmis sekilde gosteriyoruz
for i=1:size(bbox,1) %dizideki algilanan yuzleri donguyle  
    face = imresize(imcrop(I,bbox(i,:)),[60 60]);%k�rp�p
    figure;imshow(face,[]);%ekranda gozukmesini sagliyoruz
end