## Banco de Dados de Gestão de Recursos Humanos

## Objetivo do Banco de Dados
Este banco de dados foi projetado para gerenciar informações relacionadas à gestão de recursos humanos de uma organização. Ele armazena dados sobre funcionários, departamentos, avaliações de desempenho e folha de pagamento.

O banco de dados fornece suporte para:
- Organizar os funcionários por departamento.
- Registrar as avaliações de desempenho dos funcionários.
- Controlar os pagamentos salariais e descontos.

## Estrutura das Tabelas e Relacionamentos

### Tabela `departamentos`
- **Descrição:** Armazena informações sobre os departamentos da organização.
- **Campos:**
  - `departamento_id` (NUMBER): Identificador único do departamento (chave primária).
  - `nome` (VARCHAR2): Nome do departamento.
  - `localizacao` (VARCHAR2): Localização do departamento.
- **Relacionamento:** Um departamento pode ter vários funcionários associados (1:N).

### Tabela `funcionarios`
- **Descrição:** Contém informações dos funcionários.
- **Campos:**
  - `funcionario_id` (NUMBER): Identificador único do funcionário (chave primária).
  - `nome` (VARCHAR2): Nome do funcionário.
  - `data_nascimento` (DATE): Data de nascimento do funcionário.
  - `cargo` (VARCHAR2): Cargo do funcionário.
  - `salario` (NUMBER): Salário do funcionário.
  - `data_admissao` (DATE): Data de admissão do funcionário.
  - `departamento_id` (NUMBER): Referência ao departamento do funcionário (chave estrangeira para `departamentos`).
- **Relacionamento:** Um funcionário pode ter várias avaliações de desempenho e registros na folha de pagamento.

### Tabela `avaliacoes_desempenho`
- **Descrição:** Registra as avaliações de desempenho dos funcionários.
- **Campos:**
  - `avaliacao_id` (NUMBER): Identificador único da avaliação (chave primária).
  - `funcionario_id` (NUMBER): Referência ao funcionário avaliado (chave estrangeira para `funcionarios`).
  - `data_avaliacao` (DATE): Data da avaliação.
  - `nota` (NUMBER): Nota da avaliação.
  - `comentarios` (VARCHAR2): Comentários adicionais sobre a avaliação.
- **Relacionamento:** Cada avaliação pertence a um funcionário (N:1).

### Tabela `folha_pagamento`
- **Descrição:** Gerencia os pagamentos realizados para os funcionários.
- **Campos:**
  - `pagamento_id` (NUMBER): Identificador único do pagamento (chave primária).
  - `funcionario_id` (NUMBER): Referência ao funcionário pago (chave estrangeira para `funcionarios`).
  - `data_pagamento` (DATE): Data do pagamento.
  - `salario_bruto` (NUMBER): Salário bruto do funcionário.
  - `descontos` (NUMBER): Valor dos descontos aplicados.
  - `salario_liquido` (NUMBER): Salário líquido após descontos.
- **Relacionamento:** Cada pagamento pertence a um funcionário (N:1).

## Executando os Scripts no Oracle

### Passos para execução

1. **Criação do Usuário e Concessão de Privilégios:**
   Execute os seguintes comandos no SQL Developer:
   ```sql
   CREATE USER usr_gestao_rh IDENTIFIED BY senha;
   GRANT CONNECT, RESOURCE TO usr_gestao_rh;
   ```

2. **Criação das Tabelas:**
   Execute o script `estrutura.sql` para criar as tabelas:
   ```sql
   @caminho/estrutura.sql

3. **Inserção de Dados:**
   Execute o script `dados.sql` para popular as tabelas:
    ```sql
   @caminho/dados.sql


4. **Verificação dos Dados:**
   Use comandos como `SELECT` para verificar os dados nas tabelas, por exemplo:
   ```sql
   SELECT * FROM usr_gestao_rh.funcionarios;
   SELECT * FROM usr_gestao_rh.departamentos;
   SELECT * FROM usr_gestao_rh.avaliacoes_desempenho;
   SELECT * FROM usr_gestao_rh.folha_pagamento;
   ```
