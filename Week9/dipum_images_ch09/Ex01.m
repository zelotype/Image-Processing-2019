A = imread('broken_text.tif');
B = [1 0 0;
    0 1 0;
    0 0 1];
A2 = imdilate(A, B);
figure(1); imshow(A);
figure(2); imshow(A2);