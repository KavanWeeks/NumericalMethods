% Program 1.2 Fixed-Point Iteration
% Computes approximate solution of g(x) = x
% Input: function handle g, starting guess x0,
%        number of iteration steps k
% Output: Approximate solution xc
% g=@(x) cos(x)
%xc=fpi(g,0,10)

function xc = fpi(g, x0, k)
    x = zeros(1, k+1);   % preallocate for efficiency
    x(1) = x0;
    
    for i = 1:k
        x(i+1) = g(x(i));
    end
    
    xc = x(k+1);  % final approximation
end
