% Init.
clear all;
close all;
clc;

% Define 10um in the image
pic = imread('XXX.tif');
figure;imshow(pic);title('micro meter');
sprintf('Set the division of the micrometer.');
[x, y] = ginput(2);
ONEum_in_pic = (((x(1)-x(2))^2+(y(1)-y(2))^2)^(1/2))/10;
display(ONEum_in_pic);

% Get length of Short & Long side of the Cell_Y(5times)
cell = imread('YYY.tif');
figure;imshow(cell);title('Cell');
for c=1:5
    [x, y] = ginput(2);
    ShortSideOfCtrlCell(c) = ((x(1)-x(2))^2+(y(1)-y(2))^2)^(1/2)/ONEum_in_pic;
    display(ShortSideOfCtrlCell(c));
    [x, y] = ginput(2);
    LongSideOfCtrlCell(c) = ((x(1)-x(2))^2+(y(1)-y(2))^2)^(1/2)/ONEum_in_pic;
    display(LongSideOfCtrlCell(c));
end
% Derive mean of length
ctrlS = mean(ShortSideOfCtrlCell);
ctrlL = mean(LongSideOfCtrlCell);

% Get Short & Long side of the Cell_Z(5times)
Cell = imread('ZZZ.tif');
figure;imshow(Cell);title('Cell');
for i=1:5
    [x, y] = ginput(2);
    ShortSideOfCell(i) = ((x(1)-x(2))^2+(y(1)-y(2))^2)^(1/2)/ONEum_in_pic;
    display(ShortSideOfCell(i));
    [x, y] = ginput(2);
    LongSideOfCell(i) = ((x(1)-x(2))^2+(y(1)-y(2))^2)^(1/2)/ONEum_in_picS;
    display(LongSideOfCell(i));
end
% Derive mean of length
compS = mean(ShortSideOfCell);
compL = mean(LongSideOfCell);
