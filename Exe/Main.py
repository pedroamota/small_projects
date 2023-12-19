from Aluno import Aluno
from Aula import Aula
from Professor import Professor


a1 = Aluno(nome="Pedro",mat="135",curso="GES",p=5)
a2 = Aluno(nome="Gustavo",mat="231",curso="GES",p=5)

alunos = [a1,a2]

prof = Professor(nome="Bruno", espec="Banco de Dados II")

aula = Aula(assunto="Python", prof=prof, turma=alunos )

print(aula.getListaPresenca())