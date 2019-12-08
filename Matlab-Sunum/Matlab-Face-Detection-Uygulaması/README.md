# Matlab Computer Vision Face Detection
 #### Face Detection Uygulaması Kodları
 ~~~~javascript
clc; clear;
%Yuz algilama kutuphanesini dahil ediyoruz
faceDetector = vision.CascadeObjectDetector;
%Sekil olusturucu ile dikdortgen seklini olusturup renk ayarlarını
%yapıyoruz.
shapeInserter = vision.ShapeInserter('BorderColor','Custom','CustomBorderColor',[0 255 255]);
I = imread('faces.jpg');%Resmimizi aciyoruz
imshow(I);shg;%Resmi Gosteriyoruz
bbox = step(faceDetector, I);%Algilanan yuzleri diziye ekliyoruz
% Algılanan yüzlere kare çiziliyor
I_faces = step(shapeInserter, I, int32(bbox));%Algilanan yuzlerin etrafina dikdortgen ciziyoruz
imshow(I_faces), title('Algılanan Yüzler');%Algilanmis sekilde gosteriyoruz
for i=1:size(bbox,1) %dizideki algilanan yuzleri donguyle  
    face = imresize(imcrop(I,bbox(i,:)),[60 60]);%kırpıp
    figure;imshow(face,[]);%ekranda gozukmesini sagliyoruz
end
~~~~
![logo](/uyg.png)
#### Açıklama
 ~~~~javascript
 /*
 1-Yuz algilama kutuphanesini dahil ediyoruz
 2-Sekil olusturucu ile dikdortgen seklini olusturup renk ayarlarını yapıyoruz.
 3-Resmimizi aciyoruz
 4-Resmi Gosteriyoruz
 5-Algilanan yuzleri diziye ekliyoruz
 6- Algılanan yüzlere kare çiziliyor
 7-Algilanan yuzlerin etrafina dikdortgen ciziyoruz
 8-Algilanmis sekilde gosteriyoruz
 9-dizideki algilanan yuzleri donguyle  kirpip
 10-ekranda gozukmesini sagliyoruz
*/
 ~~~~
