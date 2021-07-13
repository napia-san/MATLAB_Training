% Init.
clear all;
close all;
clc;

% Get length of Short & Long Side of Cell_X
Cell = imread('XXX.tif');
figure;imshow(Cell);title('Cell');
for c=1:5
    [x, y] = ginput(2);
    ShortSideOfCtrlCell(c) = ((x(1)-x(2))^2+(y(1)-y(2))^2)^(1/2);
    display(ShortSideOfCtrlCell(c));
    [x, y] = ginput(2);
    LongSideOfCtrlCell(c) = ((x(1)-x(2))^2+(y(1)-y(2))^2)^(1/2);
    display(LongSideOfCtrlCell(c));
end

% Derive mean of length
ctrlS = mean(ShortSideOfCtrlCell);
ctrlL = mean(LongSideOfCtrlCell);

% Get length of Short & Long Side of Cell_Y
Cell = imread('YYY.tif');
figure;imshow(Cell);title('Cell');
for i=1:5
    [x, y] = ginput(2);
    ShortSideOfCell(i) = ((x(1)-x(2))^2+(y(1)-y(2))^2)^(1/2);
    display(ShortSideOfCell(i));
    [x, y] = ginput(2);
    LongSideOfCell(i) = ((x(1)-x(2))^2+(y(1)-y(2))^2)^(1/2);
    display(LongSideOfCell(i));
end

% Derive mean of length
compS = mean(ShortSideOfCell);
compL = mean(LongSideOfCell);
