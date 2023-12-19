from Pessoa import Pessoa

class Professor(Pessoa):
    def __init__(self, nome, espec):
        self.nome = nome
        self.espec = espec

    def toString(self):
        return f'''
        Nome: {self.nome}
        Especialidade: {self.espec}
        '''

