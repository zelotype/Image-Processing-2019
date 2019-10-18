clear all;
close all;

f = imread('lena.bmp');

M = 256;
N = 256;
a = 0.5;
b = 1;
R = a + sqrt(b*log(1-rand(M, N)));
figure, imshow(uint8(abs(R)), []);

pause;

close all
clear all;

C = [ 0 64;
    0 128;
    32 32;
    64 0;
    128 0;
    -32 32]
[r, R, S] = imnoise3(512, 512, C);
figure, imshow(S, []);
figure, imshow(r, []);

pause;

clear all
close all;

C = [ 0 32;
    0 64;
    16 16;
    32 0;
    64 0;
    -16 16];
[r, R, S] = imnoise3(512, 512, C);
figure, imshow(S, []);
figure, imshow(r, []);

pause;

clear all
close all;

C = [ 6 32;
    -2 2];
[r, R, S] = imnoise3(512, 512, C);
figure, imshow(S, []);
figure, imshow(r, []);

pause;

clear all
close all;

C = [1 5];

[r, R, S] = imnoise3(512, 512, C);
figure, imshow(S, []);
figure, imshow(r, []);