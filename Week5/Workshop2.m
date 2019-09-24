f2 = imread('Reg_0.png');
F2 = fft2(rgb2gray(f2));
Fc2 = fftshift(F2);
S2 = log(1+abs(Fc2));
figure(1)
imshow(abs(S2), []);