function S = mysin(A, n)
    S = zeros(size(A));
    for j = 1:n
        S = S + (-1)^(j-1) * (A^(2*j-1)) / factorial(2*j-1);
    end
end

