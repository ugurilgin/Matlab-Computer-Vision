 # Matlab Computer Vision Toolbox Sunum
 ![logo](/cover.jpg)

 ## NKU SAYISAL HESAPLAMA PROGRAMLARI
 Mühendislik temelli programlarda verilen sayısal analiz, matematik ve benzeri temelli derslere ilave olarak bu derslerde verilen konuları bilgisayar (Matlab) desteği ile çözümlerinin araştırılması, teorik ve uygulamalı çalışmalar ile genel bölüm programına ve öğrenci profiline bağlı olarak desteklenmesi amaçlanmaktadır. Öğrencilerin mühendislik problemlerini analiz edebilme kabiliyetini geliştirerek problemlerin çözümünde etkin ve bilgisayara yönelik programlar dizayn edebilmelerini sağlamak.
 ### Computer Vision
 Bilgisayarla görme, dijital görüntülerden veya videolardan nasıl üst düzey bir anlayış kazanmak için bilgisayarların nasıl yapılabileceğini ele alan, disiplinlerarası bir bilimsel alandır. 
 * [Face Detection Uygulaması](https://github.com/ugurilgin/Matlab-Computer-Vision/tree/master/Matlab-Sunum/Matlab-Face-Detection-Uygulamas%C4%B1/)
 ~~~~javascript
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
~~~~
 * [Sunum](https://github.com/ugurilgin/NKUTEK-STAJ/blob/master/Çağrı-Destek-Uygulaması.pptx)
 ### Hazırlayanlar
 * Uğur ILGIN
 * Çağlar ARSLAN
