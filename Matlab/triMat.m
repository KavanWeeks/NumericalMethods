function A = triMat(a,b,n) % a and b are inputs, n is how large
%[ 1, b, 0, 0
%  a, 1, b, 0
%  0, a, 1, b,
%  0, 0, a, 1 ]
    main_diag = ones(1,n);        % diagonal entries = 1
    upper = b*ones(1,n-1);   % above diagnals
    lower = a*ones(1,n-1);     % below diagonals

    A = diag(main_diag) + diag(upper,1) + diag(lower,-1);
end
