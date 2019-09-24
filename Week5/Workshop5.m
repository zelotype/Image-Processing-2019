c0 = imread('c0.png');
c1 = imread('c1.png');
c2 = imread('c2.png');
c3 = imread('c3.png');
c4 = imread('c4.png');
c5 = imread('c5.png');

C0 = fft2(rgb2gray(c0));
C0 = fftshift(C0);
S0 = log(1+abs(C0));
C1 = fft2(rgb2gray(c1));
C1 = fftshift(C1);
S1 = log(1+abs(C1));
C2 = fft2(rgb2gray(c2));
C2 = fftshift(C2);
S2 = log(1+abs(C2));
C3 = fft2(rgb2gray(c3));
C3 = fftshift(C3);
S3 = log(1+abs(C3));
C4 = fft2(rgb2gray(c4));
C4 = fftshift(C4);
S4 = log(1+abs(C4));
C5 = fft2(rgb2gray(c5));
C5 = fftshift(C5);
S5 = log(1+abs(C5));

figure(1)
imshow(abs(S0), []);

figure(2)
imshow(abs(S1), []);

figure(3)
imshow(abs(S2), []);

figure(4)
imshow(abs(S3), []);

figure(5)
imshow(abs(S4), []);

figure(6)
imshow(abs(S5), []);
