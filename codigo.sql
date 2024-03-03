CREATE TABLE TipoUsuario(
	id SERIAL PRIMARY KEY,
	id_usuario INT, 
	tipo_nome varchar,
	FOREIGN KEY (id_usuario) REFERENCES Usuarios(id)
);
CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255),
    email VARCHAR(255),
    senha VARCHAR(255),
    tipo_usuario INT,
    FOREIGN KEY (tipo_usuario) REFERENCES TipoUsuario(id)
);
CREATE TABLE Projeto(
	id SERIAL PRIMARY KEY,
	id_lider INT,
	tamanho_equipe INT,
	nome text,
	FOREIGN KEY (id_lider) REFERENCES Usuarios(id)
);
CREATE TABLE AvaliacaoProjeto(
	id SERIAL PRIMARY KEY,
	id_usuario INT, 
	id_projeto INT,
	nota INT,
	comentario VARCHAR(255),
	FOREIGN KEY (id_usuario) REFERENCES Usuarios(id),
	FOREIGN KEY (id_projeto) REFERENCES Projeto(id)
);
CREATE TABLE AvaliacaoIntegrantes(
	id SERIAL PRIMARY KEY,
	id_avaliador INT,
	id_avaliado INT, 
	nota INT,
	comentario, text,
	FOREIGN KEY (id_avaliador) REFERENCES Usuarios(id)
	FOREIGN KEY (id_avaliado) REFERENCES Usuarios(id)
);
CREATE TABLE VotacaoLider(
	id SERIAL PRIMARY KEY, 
	id_usuario INT,
	id_voto INT,
	id_projeto INT,
	FOREIGN KEY (id_usuario) REFERENCES Usuarios(id),
	FOREIGN KEY (id_projeto) REFERENCES Projeto(id)
);
CREATE TABLE VotacaoNomeProjeto(
	id SERIAL PRIMARY KEY,
	id_usuario INT,
	id_projeto INT,
	FOREIGN KEY (id_usuario) REFERENCES Usuarios(id),
	FOREIGN KEY (id_projeto) REFERENCES Projeto(id)
);
CREATE TABLE Equipe(
	id SERIAL PRIMARY KEY,
	id_usuario INT,
	id_projeto INT,
	FOREIGN KEY (id_usuario) REFERENCES Usuarios(id),
	FOREIGN KEY (id_proejto) REFERENCES Projeto(id)
);
