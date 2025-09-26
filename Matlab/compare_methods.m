% compare_methods.m
% Finds the smallest n such that recursive and trapz results differ by > 1e3

tol = 1e3;          % threshold
maxN = 500;         % safety cap so it doesn't loop forever

for n = 1:maxN
    I_rec  = recursive(n);   % recursive formula
    I_trap = In_trapz(n);    % trapezoid rule
    
    diffVal = abs(I_rec - I_trap);
    
    if diffVal > tol
        fprintf('First n where difference > 1e3 is n = %d\n', n);
        fprintf('Recursive: %.6e, Trapz: %.6e, Difference: %.6e\n', ...
            I_rec, I_trap, diffVal);
        break
    end
end
