img = imread('noise.tif','tif');
img1 = filter(img,1);
img2 = filter(img,2);
img3 = filter(img,3);
subplot(2,2,1);
imshow(img);
title('main')

subplot(2,2,2);
imshow(img1);
title('min');

subplot(2,2,3);
imshow(img2);
title('max')

subplot(2,2,4);
imshow(img3);
title('median')