import numpy
numpy.set_printoptions(precision=4, suppress=True, linewidth=100)

def Hillbert(n):
    matrix = numpy.zeros((n, n))
    for i in range(n):
        for j in range(n):
            matrix[i, j] = 1 / (i + j + 1)
    print("Hilbert:\n", matrix)
    return matrix

n3 = Hillbert(3)
n5 = Hillbert(5)
n10 = Hillbert(10)

def gaussjordan(matrix):
    n = matrix.shape[1]
    for j in range(n-1):
        for i in range(1+j,n):
          mult = matrix[i,j]/matrix[j,j]
          for k in range(n):
              value = matrix[i,k]-mult*matrix[j,k]
              matrix[i,k]=round(value, 5)
    print("Gauss Jordan:\n",matrix)

gaussjordan(n3)
gaussjordan(n5)
gaussjordan(n10)

