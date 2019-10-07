clc;
clear;

BW = imread('D:\Downloads\output1\input5-outputs.png');
BW = imgaussfilt(BW,1.4);


BW = rgb2gray(BW);
BW = imresize(BW,[5000,5000]);


for i=1:5000
    for j=1:5000
        if BW(i,j)<128
            BW(i,j)=0;
        else 
            BW(i,j)=255;
        end
    end
end


imwrite(BW,'D:\Downloads\output1\input5-outputs.tif');
% p = psnr(BW,gt);
%figure(1), imshow(BW);
binaryImage = imclearborder(BW,8);
[labeledImage, numberOfhouse] = bwlabel(binaryImage);

X = ['The number of houses: ', num2str(numberOfhouse)];
disp(X);
