% Practice for Midterm - WORKSHOP 01

% ------WS1------
% f = imread('lena.jpg');
% imshow(f);
% imwrite(f, 'lena_jung.jpg');
% f2 = imread('lena_jung.jpg');
% imwrite(f2, 'lena_jung_5.jpg', 'quality', 5);
% g = rgb2gray(f2);
% imshow(g);
% gflr = fliplr(g);
% gfrl = fliplr(gflr);
% subplot(1,2,1); imshow(gflr);
% subplot(1,2,2); imshow(gfrl);

% ------WS2------
% f = imread('lena.bmp');
% max_pixel = max(f(:))
% min_pixel = min(f(:))
% mean_pixel = mean(f(:))
% b = imbinarize(f); /??????????????????? 2 ????????????
% imshow(b);

% ------WS3------
% f = imread('lena.jpg');
% g = rgb2gray(f);
% x = sum(g(:))

% ------WS4------
% f = imread('lena.bmp');
% fc = f(68:188, 68:188); /range60
% imshow(fc);

% ------WS5------
% f = imread('lena.bmp');
% fr = imrotate(f, 90);
% imshow(fr);

% ------WS6------
% f = imread('lena.bmp');
% f(1:10, :) = 0;
% f(:, 1:10) = 0;
% f(:, end-10:end) = 0;
% f(end-10:end, :) = 0;
% imshow(f);

% ------WS7------
% f = imread('lena.bmp');
% a = f(1:128, :);
% b = f(129:end, :);
% f = [b;a];
% imshow(f);

% ------WS8------
% f = imread('lena.bmp');
% a = f(1:128, 1:128);
% b = f(1:128, 129:end);
% c = f(129:end, 1:128);
% d = f(129:end, 129:end);
% f = [d c;b a];
% imshow(f);

% ------WS9------
% f = imread('lena.bmp');
% f(68:188, 68:188) = 255;
% imshow(f);

% ------WS10------
% f = imread('lena.bmp');
% f = im2bw(f, 0.6);
% imshow(f);