function B = ordered_dither(I, D)
    D = repmat(D, size(I)./size(D));
    B = (D<I);
end