function [VER, HOR, ROT] = flip_and_rotate(IMG)
    ROT = imrotate (IMG, -45);
    VER = flipud (IMG);
    HOR = fliplr (IMG);
end