function [TH] = threshold(IMG, level)
    img = imread ('./input/AlfredoBorba_TuscanLandscape.jpg');
    isColor = (size(img, 3) == 3);
    
    IMG = rgb2gray (img);
    if (isColor)
        warning ('Not grayscale!');
    end
    idxs = IMG>level;
    TH =IMG*uint8 (idxs);
end