import math

x = int(input("Digite qualquer numero real: "))

if x < 0:
    #pega o modulo do numero
    y = abs(x)
    print("Raiz quadrada: ",math.sqrt(y),"i")

else:
    print("Raiz quadrada: ",math.sqrt(x))