-- Inserção de dados na tabela Departamentos
INSERT INTO usr_gestao_rh.departamentos (departamento_id, nome, localizacao) VALUES (1, 'Recursos Humanos', 'São Paulo');
INSERT INTO usr_gestao_rh.departamentos (departamento_id, nome, localizacao) VALUES (2, 'Tecnologia', 'Rio de Janeiro');
INSERT INTO usr_gestao_rh.departamentos (departamento_id, nome, localizacao) VALUES (3, 'Financeiro', 'Belo Horizonte');

-- Inserção de dados na tabela Funcionários
INSERT INTO usr_gestao_rh.funcionarios (funcionario_id, nome, data_nascimento, cargo, salario, data_admissao, departamento_id)
VALUES (1, 'João Silva', TO_DATE('1985-06-15', 'YYYY-MM-DD'), 'Analista de RH', 5000.00, TO_DATE('2020-01-15', 'YYYY-MM-DD'), 1);

INSERT INTO usr_gestao_rh.funcionarios (funcionario_id, nome, data_nascimento, cargo, salario, data_admissao, departamento_id)
VALUES (2, 'Maria Oliveira', TO_DATE('1990-04-20', 'YYYY-MM-DD'), 'Desenvolvedor', 7000.00, TO_DATE('2019-03-10', 'YYYY-MM-DD'), 2);

INSERT INTO usr_gestao_rh.funcionarios (funcionario_id, nome, data_nascimento, cargo, salario, data_admissao, departamento_id)
VALUES (3, 'Carlos Souza', TO_DATE('1980-10-05', 'YYYY-MM-DD'), 'Contador', 6000.00, TO_DATE('2018-06-01', 'YYYY-MM-DD'), 3);

-- Inserção de dados na tabela Avaliações de Desempenho
INSERT INTO usr_gestao_rh.avaliacoes_desempenho (avaliacao_id, funcionario_id, data_avaliacao, nota, comentarios)
VALUES (1, 1, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 9.0, 'Excelente desempenho na gestão de conflitos.');

INSERT INTO usr_gestao_rh.avaliacoes_desempenho (avaliacao_id, funcionario_id, data_avaliacao, nota, comentarios)
VALUES (2, 2, TO_DATE('2023-02-10', 'YYYY-MM-DD'), 8.5, 'Boas práticas de desenvolvimento.');

-- Inserção de dados na tabela Folha de Pagamento
INSERT INTO usr_gestao_rh.folha_pagamento (pagamento_id, funcionario_id, data_pagamento, salario_bruto, descontos, salario_liquido)
VALUES (1, 1, TO_DATE('2023-03-01', 'YYYY-MM-DD'), 5000.00, 500.00, 4500.00);

INSERT INTO usr_gestao_rh.folha_pagamento (pagamento_id, funcionario_id, data_pagamento, salario_bruto, descontos, salario_liquido)
VALUES (2, 2, TO_DATE('2023-03-01', 'YYYY-MM-DD'), 7000.00, 700.00, 6300.00);
