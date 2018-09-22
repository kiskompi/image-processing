function B = random_dither(A)
    ran = rand(size(A,1), size(A,2));
    B = A + ran;
end