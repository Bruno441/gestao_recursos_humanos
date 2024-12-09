# Banco de Dados de Gestão de Recursos Humanos

Este projeto implementa um banco de dados para gerenciar informações de funcionários, departamentos, avaliações de desempenho e folha de pagamento.

## Estrutura do Banco de Dados

### Tabelas

1. **departamentos**:
   - Contém informações sobre os departamentos da empresa.
   - **Relacionamento**: Relaciona-se com `funcionarios`.

2. **funcionarios**:
   - Contém dados pessoais e profissionais dos funcionários.
   - **Relacionamento**: Relaciona-se com `departamentos`, `avaliacoes_desempenho` e `folha_pagamento`.

3. **avaliacoes_desempenho**:
   - Registra as avaliações de desempenho dos funcionários.
   - **Relacionamento**: Relaciona-se com `funcionarios`.

4. **folha_pagamento**:
   - Registra os pagamentos realizados aos funcionários.
   - **Relacionamento**: Relaciona-se com `funcionarios`.

### Relacionamentos

- **departamentos (1:N) funcionarios**: Um departamento pode ter vários funcionários, mas cada funcionário pertence a um único departamento.
- **funcionarios (1:N) avaliacoes_desempenho**: Um funcionário pode ter várias avaliações de desempenho.
- **funcionarios (1:N) folha_pagamento**: Um funcionário pode ter vários registros de pagamento.

---

## Objetivo do Banco de Dados

Este banco de dados foi projetado para:
- Gerenciar informações estruturadas sobre funcionários.
- Registrar e acompanhar avaliações de desempenho.
- Controlar a folha de pagamento dos funcionários.

---

## Execução dos Scripts

### Requisitos

- Banco de Dados Oracle instalado.
- Ferramenta para execução de SQL (como SQL*Plus ou Oracle SQL Developer).
- Acesso administrativo ao banco de dados.

### Passos

1. **Execute o script `estrutura.sql` para criar as tabelas:**
   ```sql
   @caminho/estrutura.sql

2. **Execute o script `dados.sql` para popular as tabelas:**
    ```sql
    @caminho/dados.sql

3. **Valide as tabelas e dados inseridos:**

    ```sql
    SELECT * FROM usr_gestao_rh.departamentos;
    SELECT * FROM usr_gestao_rh.funcionarios;
    SELECT * FROM usr_gestao_rh.avaliacoes_desempenho;
    SELECT * FROM usr_gestao_rh.folha_pagamento;
