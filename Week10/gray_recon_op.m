clear all;
close all;

f = imread('dowels.tif');
se = strel('disk', 5);
fe = imerode(f, se);
fobr = imreconstruct(fe, f);
fobrc = imcomplement(fobr);
fobrce = imerode(fobrc, se);
fobrcer = imcomplement(imreconstruct(fobrce, fobrc));
figure(1); imshow(f);
figure(2); imshow(fe);
figure(3); imshow(fobr);
figure(4); imshow(fobrcer);