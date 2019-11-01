f = imread('dowels.tif');
se = strel('disk', 10);
fo = imopen(f, se);
foc = imclose(fo, se);
figure, imshow(f);
figure, imshow(fo);
figure, imshow(foc);