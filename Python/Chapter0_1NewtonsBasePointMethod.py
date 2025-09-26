c = [1,2,3,4,5] #Polynomial Coefficients in the form c[0]+(x-r[0])(c[1]+(x-r[1])(c[2]+(x-r[2])(c[3]+x-r[3](c4))))
r = [1,2,3,4] #one less than the number of coefficients
def NewtonsBasePointNested(x: float, c: list, r: list):   #Only x and coefficients are actually neccecary. Degree can be found by counting coefficients. All polynomials can be made into standard form
    degree = len(c)-1
    y = c[0]
    reversedc = list(reversed(c))
    print(reversedc)
    #xrange(10, 0, -1)
    for i in range(degree):
        y += (x-r[i])
        print(y)


NewtonsBasePointNested(1, c, r)