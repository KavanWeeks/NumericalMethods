def f(x):
    return x**2 - 2   # example: solve x^2 = 2

def bisection(f, a, b, tol):
    if f(a) * f(b) > 0:
        print("Bisection method fails: f(a) and f(b) must have opposite signs.")
        return None

    while (b - a) / 2 > tol:
        c = (a + b) / 2
        if f(c) == 0:  # found exact root
            return c
        elif f(a) * f(c) < 0:
            b = c
        else:
            a = c
    return (a + b) / 2

calculatedTol = 10**(-8)
print("Answer: ", bisection(f, 0, 10, calculatedTol))