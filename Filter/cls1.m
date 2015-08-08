function[img1] = filter(img,type);
%img = imread('noise.tif','tif');
[x y] = size(img);
tmp = zeros(x+2,y+2);
img1 = zeros(x+2,y+2);
for i=1:1:x
    for j=1:1:y
         tmp(i+1,j+1) = img(i,j);
    end
end

for i=2:1:x+1
    for j=2:1:y+1
        A = zeros(1,9);
        cnt = 1;
        for k=-1:1:1
            for l=-1:1:1
                A(cnt) = tmp(i+k,j+l); 
                cnt = cnt+1;
            end
        end
        
        A = sort(A);
        
        if type == 1
            img1(i,j) = A(1);
        elseif type == 2
            img1(i,j) = A(9);
        elseif type == 3
            img1(i,j) = A(5);
        end
        
    end
end

img1 = uint8(img1);
