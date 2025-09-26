function Integral = In_trapz(n)
    % In_trap computes In = ∫(t^n / (5+t)) dt from 0 to 1
    % using trapz with 100 subintervals

    t = linspace(0,1,101);        % 101 points in [0,1]
    f = t.^n ./ (5+t);            % function values
    Integral = trapz(t,f);        % call MATLAB's built-in trapz
end