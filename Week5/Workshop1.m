f1 = imread('SQ.png');
F1 = fft2(rgb2gray(f1));
Fc1 = fftshift(F1);
S1 = log(1+abs(Fc1));
figure(1)
imshow(abs(S1), []);
