CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255),
    email VARCHAR(255),
    senha VARCHAR(255),
    tipo_usuario INT,
    FOREIGN KEY (tipo_usuario) REFERENCES nome_da_tabela_referenciada(id)
);
