Coefficients = [2, 3, -3, 5, -1] #Polynomial Coefficients in the form c[1]x^(n) + c[2]x^(n-1) ... + c_n

def HornersNested(x: float, c: list):   #Only x and coefficients are actually neccecary. Degree can be found by counting coefficients. All polynomials can be made into standard form
    degree = len(c)-1
    y = c[0]
    for i in range(degree):
        y = y * x + c[i+1]
    return y

print(HornersNested(1, Coefficients))