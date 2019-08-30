function [s] = lcsTrans(image)
for pixel = image
if (image >= 0) && (image <= 40)
    r = 2*image;
elseif (image > 40) && (image <= 60)
    r = (2*image)/3 + (4/3);
elseif (image > 60) && (image <= 100)
    r = (2*image)/3 - (4/3);
end

s = 1./(1+(m./r.^5));