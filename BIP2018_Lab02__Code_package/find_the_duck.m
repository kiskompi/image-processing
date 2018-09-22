function duck = find_the_duck(I)
	red  = I(:,:,1);
    blue = I(:,:,2);
    duck = logical (red > 50);
end