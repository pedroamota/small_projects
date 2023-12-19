import math

#Contruindo vetor
x = [1,2,3,4,5,6,7,8,9,10]

maior = x[0]
soma = 0

for i in range(9):

    #pega o numero par
    if i%2 == 0:

        #calcula o fatorial de i
        aux = i
        fatorial = 1
        while aux > 0:
            fatorial *= aux
            aux -= 1
           
        x[i] = pow(3,i) + 7 * fatorial
        
    else:
        x[i] = pow(2,i) + 4 * math.log(i)

for i in range(9):

    #pega a posicao do maior 'n' no vetor
    if maior < x[i]:
        maior = x[i]
        p = i
    
    #soma todos os valores no vetor
    for n in range(9):
        soma += x[n]

print("Posição do maior elemento: (",maior,") é ",p)
print("Média dos elementos contindos nesse vetor",round(soma/10,2))