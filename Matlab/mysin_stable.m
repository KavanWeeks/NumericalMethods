function S = mysin_stable(A, n)
% Truncated matrix sine using a stable term recurrence.
% S = sum_{j=1}^n (-1)^(j-1) * A^(2j-1)/(2j-1)!
    S  = zeros(size(A));
    if n == 0, return; end
    T  = A;          % first term: A/1!
    S  = S + T;
    if n == 1, return; end
    A2 = A*A;        % reuse A^2
    for j = 1:n-1    % build next terms safely
        T = - T * A2 / ((2*j)*(2*j+1));  % T_{j+1} = -T_j*A^2/((2j)(2j+1))
        S = S + T;
    end
end
