class Aluno:
    def __init__(self, ra, nome, tempoestudo, rendafamiliar):
        self.ra = ra #Registro do aluno (ra)
        self.nome = nome # nome do aluno (nome)
        self.tempoestudo = tempoestudo # Tempo de estudo (em horas)
        self.rendafamiliar = rendafamiliar # Rendafamiliar do aluno (decimal)
      
        # pip install flask_sqlalchemy  
        # pip freeze >> requirements.txt
        # pip install pymysql
        # pip install sqlalchemy
