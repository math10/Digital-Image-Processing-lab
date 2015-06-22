a = imread('lenaRBG.tiff');
figure
subplot(1,3,1);
imshow(a);
title('main picture');
[x y z] = size(a);

b = a;
b(:,:,1) = b(:,:,1)*0.299 + b(:,:,2)*.587 + b(:,:,3)*.114;
b(:,:,2) = b(:,:,1);
b(:,:,3) = b(:,:,1);
subplot(1,3,2);
imshow(b);
title('luminosity method');

b = a;
for i=1:1:x
    for j=1:1:y
        c = max(b(i,j,1) + b(i,j,2) + b(i,j,3));
        d = min(b(i,j,1) + b(i,j,2) + b(i,j,3));
        b(i,j,1) = (c+d)/2;
        b(i,j,2) = b(i,j,1);
        b(i,j,3) = b(i,j,1);
    end
end
subplot(1,3,3);
imshow(b);
title('Desaturation method');


