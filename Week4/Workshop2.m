f = [1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 0 0;
    1 1 1 1 1 0 0 0;
    1 1 1 1 0 0 0 0;
    1 1 1 0 0 0 0 0;
    1 1 0 0 0 0 0 0;
    1 0 0 0 0 0 0 0];
w = [-1 -1 -1;
    -1 8 -1;
    -1 -1 -1];
g = imfilter(f, w, 'conv', 0)