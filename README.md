 # Matlab Computer Vision Toolbox Sunum
 ![logo](/cover.jpg)

 ## NKU SAYISAL HESAPLAMA PROGRAMLARI
 Mühendislik temelli programlarda verilen sayısal analiz, matematik ve benzeri temelli derslere ilave olarak bu derslerde verilen konuları bilgisayar (Matlab) desteği ile çözümlerinin araştırılması, teorik ve uygulamalı çalışmalar ile genel bölüm programına ve öğrenci profiline bağlı olarak desteklenmesi amaçlanmaktadır. Öğrencilerin mühendislik problemlerini analiz edebilme kabiliyetini geliştirerek problemlerin çözümünde etkin ve bilgisayara yönelik programlar dizayn edebilmelerini sağlamak.
 ### Computer Vision
 Bilgisayarla görme, dijital görüntülerden veya videolardan nasıl üst düzey bir anlayış kazanmak için bilgisayarların nasıl yapılabileceğini ele alan, disiplinlerarası bir bilimsel alandır. 
 * [Face Detection Uygulaması](https://github.com/ugurilgin/Matlab-Computer-Vision/tree/master/Matlab-Sunum/Matlab-Face-Detection-Uygulamas%C4%B1/)
 * [Sunum](https://github.com/ugurilgin/Matlab-Computer-Vision/blob/master/Matlab-Sunum/Matlab%20Sunum%20Dosyas%C4%B1.pptx)
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
 ### Hazırlayanlar
 * Uğur ILGIN
 * Çağlar ARSLAN
