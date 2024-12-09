-- Criação do usuário
CREATE USER usr_gestao_rh IDENTIFIED BY senha;

-- Concessão de privilégios
GRANT CONNECT, RESOURCE TO usr_gestao_rh;

-- Criação da tabela de Departamentos
CREATE TABLE usr_gestao_rh.departamentos (
    departamento_id NUMBER(38,0) PRIMARY KEY,
    nome VARCHAR2(100) NOT NULL,
    localizacao VARCHAR2(100)
);

-- Criação da tabela de Funcionários
CREATE TABLE usr_gestao_rh.funcionarios (
    funcionario_id NUMBER(38,0) PRIMARY KEY,
    nome VARCHAR2(100) NOT NULL,
    data_nascimento DATE,
    cargo VARCHAR2(100),
    salario NUMBER(10,2),
    data_admissao DATE,
    departamento_id NUMBER(38,0),
    FOREIGN KEY (departamento_id) REFERENCES usr_gestao_rh.departamentos(departamento_id)
);

-- Criação da tabela de Avaliações de Desempenho
CREATE TABLE usr_gestao_rh.avaliacoes_desempenho (
    avaliacao_id NUMBER(38,0) PRIMARY KEY,
    funcionario_id NUMBER(38,0),
    data_avaliacao DATE,
    nota NUMBER(4,2),
    comentarios VARCHAR2(4000),
    FOREIGN KEY (funcionario_id) REFERENCES usr_gestao_rh.funcionarios(funcionario_id)
);

-- Criação da tabela de Folha de Pagamento
CREATE TABLE usr_gestao_rh.folha_pagamento (
    pagamento_id NUMBER(38,0) PRIMARY KEY,
    funcionario_id NUMBER(38,0) NOT NULL,
    data_pagamento DATE,
    salario_bruto NUMBER(10,2),
    descontos NUMBER(10,2),
    salario_liquido NUMBER(10,2),
    FOREIGN KEY (funcionario_id) REFERENCES usr_gestao_rh.funcionarios(funcionario_id)
);
