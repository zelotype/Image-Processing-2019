clear all
close all

f = checkerboard(8);
figure, imshow(im2uint8(mat2gray(f)));

PSF = fspecial('motion',7,45);
gb = imfilter(f, PSF, 'circular');
figure, imshow(im2uint8(mat2gray(gb)));

noise = imnoise(zeros(size(f)), 'gaussian', 0, 0.001);
figure, imshow(im2uint8(mat2gray(noise)));
g = gb + noise;

figure, imshow(im2uint8(mat2gray(g)));

figure, imshow(pixeldup(f,8), []);

fr1 = deconvwnr(g, PSF);
figure, imshow(im2uint8(mat2gray(fr1)));

Sn = abs(fft2(noise)).^2;
nA = sum(Sn(:))/prod(size(noise));
Sf = abs(fft2(f)).^2;
fA = sum(Sf(:))/prod(size(f));
R = nA/fA;

fr2 = deconvwnr(g, PSF, R);
figure, imshow(im2uint8(mat2gray(fr2)));

NCORR = fftshift(real(ifft2(Sn)));
ICORR = fftshift(real(ifft2(Sf)));
fr3 = deconvwnr(g, PSF, NCORR, ICORR);
figure, imshow(im2uint8(mat2gray(fr3)));

fr4 = deconvreg(g, PSF, 2);
figure, imshow(im2uint8(mat2gray(fr4)));

fr5 = deconvreg(g, PSF, 0.8, [1e-7 1e7]);
figure, imshow(pixeldup(im2uint8(mat2gray(fr5)), 8));