# modelagem-banco-dados

 Documentação Simplificada do Modelo Relacional

Projeto: Abandono Zero

Data: 2024-05-09

Autor: Isadora Gatto

Objetivo: Descrever o modelo relacional do projeto de forma resumida e simplificada.

Entidades

ADM (`users`): Armazena informações básicas sobre o adm para que ele possa acessar os dados das perguntas (email, senha).
-Formulários
  - Geral (`users-forms`): Esse formulário será onde TODOS devir responder com informações gerais sobre o usuário (renda, moradia, sexo, educação, constituição familiar, pais, estado, cidade e bairro.)

  - Possui Cão (`forms-have-dog`): Esse formulário será respondido após filtrar quem tem cachorro pelo primeiro formulário. Nele estará informações sobre o cão que o usuário possui (raça, idade, nome, se é castrado ou não, etc.)

  - Já Teve Cão(`forms-had-dogs`): Esse formulário será respondido após filtrar quem já teve cachorro pelo primeiro formulário. Nele terá informações sobre o cão que o usuário já teve (nome, personalidade, quanto tempo a pessoa ficou com cachorro, porque ela não quer mais ter cachorro, etc.)

  - Deseja Cão (`forms-never-had-dog`):Esse formulário será respondido após filtrar quem não tem cachorro mas gostaria de ter pelo primeiro formulário. Nele terá informações sobre o cão que o usuário deseja ter (tamanho, pelagem, ser quer adotar ou comprar,  etc.)

  - Sem Cão (`forms-doesn´t-want-dog`):Esse formulário será respondido após filtrar quem não quer ter cachorro pelo primeiro formulário. Nele terá a informação pelo motivo que o usuário não tem e não deseja ter um cão.

-Contato (`forms1`): Esse formulário só será respondido para quem responder o formulário ‘forms-have-dog’ e `forms-never-had-dog`. Dados para contato futuro com o usuário (nome completo, email).


Relacionamentos
Tabela "users-forms": relacionamento 1:N entre a tabela "users-forms" e as tabelas "forms 1", "forms-have-dog", "forms-had-dogs", "forms-never-had-dog" e "forms-doesn´t-want-dog"
As conexões entre chaves primárias e estrangeiras são estabelecidas pelas colunas que têm o mesmo nome em diferentes tabelas. Por exemplo:
Na tabela "forms 1", a coluna "id_users-forms" é a chave estrangeira que se relaciona com a chave primária "id" na tabela "users-forms".
Nas tabelas "forms-have-dog", "forms-had-dogs", "forms-never-had-dog" e "forms-doesn´t-want-dog", a coluna "id_users-forms” é a chave estrangeira que se relaciona com a chave primária "id" na tabela "users-forms".



 Regras de Negócio

- Todos os campos obrigatórios devem ser preenchidos.
- os usuários devem confirmar que estão ciente que os dados fornecidos serão armazenados 
- As informações devem ser consistentes entre os formulários.
- Os usuários não podem editar informações já salvas
- a mesma pessoa não pode responder mais de uma vez o usuário, só após 6 meses
- As informações dos usuários são confidenciais.
-caso o usuário pare de responder o formulário no meio essas respostas já estaram salvas automaticamente 
-caso usuário para responder no meio ele poderá voltar mais tarde para mesma questão de onde ele parou 


