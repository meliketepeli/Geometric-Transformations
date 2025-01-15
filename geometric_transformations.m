% Geometric Transformations, Intensity Transformations 

clc
clear all;

imgGray=imread("image1.bmp");
figure
imshow(imgGray);
title("First Image");
% resizing part

image2=imresize(imgGray, 3.0,"nearest");
figure
imshow(image2);
title("3.0 Resizing Nearest Image");

image3=imresize(imgGray, 3.0,"bilinear");
figure
imshow(image3);
title("3.0 Resizing Bilinear Image");

% rotation part

image4=imrotate(imgGray,45.0,"nearest");
figure
imshow(image4);
title("45.0 Rotating Nearest Image");

image5=imrotate(imgGray,90.0,"bilinear");
figure
imshow(image5);
title("90.0 Rotating Bilinear Image");

% Histogram Equalization part
new_image=imread("Cyprus2.png");
figure
imshow(new_image);
title("Cyprus Image")

figure
imhist(new_image); % histogram halini gormek icin
title("Before Histogram Equalization");

image6=histeq(new_image);
figure
imshow(image6);
title("Image after Histogram Eq.");

figure
imhist(image6);   % histogram equalization sonrası histogram dağılımını gormek için
title("After Histogram Equalization");