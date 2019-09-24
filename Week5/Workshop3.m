f3 = imread('Reg_90.png');
F3 = fft2(rgb2gray(f3));
Fc3 = fftshift(F3);
S3 = log(1+abs(Fc3));
figure(1)
imshow(abs(S3), []);