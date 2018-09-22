img = imread ('./input/AlfredoBorba_TuscanLandscape.jpg');
isColor = (size(img, 3) == 3);
imshow (img);
gray = rgb2gray (img);
imshow (gray);
imwrite (gray, './output/AlfredoBorba_TuscanLandscape_GRAY.jpg');