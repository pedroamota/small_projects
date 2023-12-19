
import csv

soma = 0.00

tabela = open("investigados.csv", "r")
table = csv.reader(tabela, delimiter = ";")

#Pula a primeira linha da tabela
next(table)

for i in range(7):
    for lista in table:        
        #só está mostrando a primeira coluna
        print(lista[i])
        #soma += float(coluna[lista])

