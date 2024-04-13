CREATE TABLE funcionarios (
    funcionario_id INT,
    equipamento_id INT,
    nome_funcionario VARCHAR(100),
    matricula_funcionario INT(10),
    cargo_funcionario VARCHAR(100),
    departamento_funcionario VARCHAR(100),
    PRIMARY KEY (funcionario_id)
);

CREATE TABLE equipamentos (
    equipamento_id INT,
    nota_fiscal_id INT,
    nome_equipamento VARCHAR(100),
    tipo_equipamento VARCHAR(50),
    numero_inventario INT(5),
    PRIMARY KEY (equipamento_id)
);

CREATE TABLE funcionario_equipamento (
    funcionario_id INT,
    equipamento_id INT,
    FOREIGN KEY (funcionario_id) REFERENCES funcionarios(funcionario_id),
    FOREIGN KEY (equipamento_id) REFERENCES equipamentos(equipamento_id)
);

ALTER TABLE funcionarios ADD FOREIGN KEY (equipamento_id) REFERENCES equipamentos(equipamento_id);

CREATE TABLE nota_fiscal (
    nota_fiscal_id INT,
    num_nota INT(44),
    data_compra DATE,
    PRIMARY KEY (nota_fiscal_id)
);

ALTER TABLE equipamentos ADD FOREIGN KEY (nota_fiscal_id) REFERENCES nota_fiscal(nota_fiscal_id);
