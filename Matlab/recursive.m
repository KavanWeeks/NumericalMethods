function finalvalue = recursive(iterations)
    % initial value I0
    I = log(6/5);   
    
    % apply recurrence n times
    for n = 1:iterations    
        I = (1/n) - 5*I;
    end
    
    % return final result
    finalvalue = I;
end