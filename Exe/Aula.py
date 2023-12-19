
class Aula():
    def __init__(self,assunto, prof, turma):
        self.professor = prof
        self.turma = turma
        self.assunto = assunto

    def getListaPresenca(self):
        result = "Aula de {self.assunto} \nProfessor: {self.professor.nome} \n Lista de Presença: "

        for turma in self.turma:
            result += turma.toString()

        return result