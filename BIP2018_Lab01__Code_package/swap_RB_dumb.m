function [BGR] = swap_RB_dump(RGB)
    BGR = RGB;
    for (x = 1:size(BGR,1))
        for (y = 1:size(BGR,2))
            R = RGB (x,y,1);
            BGR(x,y,1)=BGR(x,y,3);
            BGR(x,y,3)=R;
        end
    end
end