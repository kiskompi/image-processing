function duck = find_the_duck(I)
	red  = I(:,:,1);
    blue = I(:,:,2);
    green= I(:,:,3);
    duck = blue - red < 33 | (red < 45 & blue < 45 & green < 45) | (red > 50 & red > blue) ;
end