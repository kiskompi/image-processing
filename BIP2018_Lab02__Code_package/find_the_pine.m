function pine = find_the_pine(I)
   hsv = rgb2hsv(I);
   hue = hsv(:,:,1);
   sat = hsv(:,:,2);
   val = hsv(:,:,3);
   
   pineh = logical (hue < 0.15);
   pines = logical (sat < 0.2);
   pinev = val > 0.025 & val < 0.95;
   pine  = imfill((pineh | pines) & pinev , 'holes');
   se = [0 1 0; 1 1 1; 0 1 0];
   
   pine = imerode(pine, se);
end