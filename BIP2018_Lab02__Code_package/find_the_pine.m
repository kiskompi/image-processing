function pine = find_the_pine(I)
   hsv = rgb2hsv(I);
   hue = hsv(:,:,1);
   sat = hsv(:,:,2);
   val = hsv(:,:,3);
   
   pineh =  logical (hue < 0.15);
   pines = logical (sat > 0.1);
   pine = pineh & pines;
end