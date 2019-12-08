clc; clear;
%Yuz algilama kutuphanesini dahil ediyoruz
faceDetector = vision.CascadeObjectDetector;
%Sekil olusturucu ile dikdortgen seklini olusturup renk ayarlarýný
%yapýyoruz.
shapeInserter = vision.ShapeInserter('BorderColor','Custom','CustomBorderColor',[0 255 255]);
I = imread('faces.jpg');%Resmimizi aciyoruz
imshow(I);shg;%Resmi Gosteriyoruz
bbox = step(faceDetector, I);%Algilanan yuzleri diziye ekliyoruz
% Algýlanan yüzlere kare çiziliyor
I_faces = step(shapeInserter, I, int32(bbox));%Algilanan yuzlerin etrafina dikdortgen ciziyoruz
imshow(I_faces), title('Algýlanan Yüzler');%Algilanmis sekilde gosteriyoruz
for i=1:size(bbox,1) %dizideki algilanan yuzleri donguyle  
    face = imresize(imcrop(I,bbox(i,:)),[60 60]);%kýrpýp
    figure;imshow(face,[]);%ekranda gozukmesini sagliyoruz
end