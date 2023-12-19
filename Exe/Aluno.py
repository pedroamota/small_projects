from Pessoa import Pessoa


class Aluno(Pessoa):
    def __init__(self, nome, mat, curso, p):
        self.nome = nome
        self.mat = mat
        self.curso = curso
        self.p = p

    def toString(self):
        return f'''
        Nome: {self.nome}
        Curso: {self.curso}
        Periodo: {self.p}
        Matricula: {self.mat}
        '''
