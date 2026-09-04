CREATE DATABASE IF NOT EXISTS imobiliaria_migrante;
USE imobiliaria_migrante;

CREATE TABLE tipo_imovel (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE imovel (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo INT NOT NULL UNIQUE,
    descricao VARCHAR(255) NOT NULL,
    id_tipo_imovel INT NOT NULL,
    CONSTRAINT fk_imovel_tipo FOREIGN KEY (id_tipo_imovel) 
        REFERENCES tipo_imovel(id)
);

CREATE TABLE pagamento (
    id INT AUTO_INCREMENT PRIMARY KEY,
    data_pagamento DATE NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    id_imovel INT NOT NULL,
    CONSTRAINT fk_pagamento_imovel FOREIGN KEY (id_imovel) 
        REFERENCES imovel(id)
);