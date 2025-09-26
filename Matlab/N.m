function x_i = N(x, fun, dfun, iterations)
    for i = 1:iterations
        x = x - fun(x)/dfun(x);
    end
    x_i = x;
end