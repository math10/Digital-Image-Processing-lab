a = imread('F:\4.2\Image processing\lena.tiff');
[x y] = size(a);
b = zeros(x,y);
figure
subplot(4,3,1)
imshow(a)
for i=1:1:8
    for j=1:1:x
        for k=1:1:y
            c = de2bi(a(j,k),8);
            b(j,k) = c(i);            
        end
    end
    subplot(4,3,i+1);
    imshow(b);
end