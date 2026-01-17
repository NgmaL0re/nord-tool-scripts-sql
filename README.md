## **Descrição**
Projeto para criação de scripts de forma incremental para aplicação nord_tool_backend

## **Tecnologia**
PostgreSQL - Banco relacional

## **Tutorial de como trabalhar com arquivos incrementais dentro do projeto:**

 - Cada arquivo de incremento deverá conter o número sequente, ou seja, qual deve rodar primeiro em sua ordens de prioridade,
   para não conter erros de de dependencias de tabelas filhos.

   Exemplo de nome a ser usado:  "01.nome_tabela_pai_ddl.sql" e "02.nome_tabela_filho_ddl.sql"

   Outro ponto a ser destacado nos nomes é que ao final do nome deve-se colocar o nome da estrutura da pasta que o arquivo
   está relacionado. Ideal, obdecer a estrutura "DDL" para criação das estruturas bases da tabela e o "DML" para os
   arquivos e manipulação de dados já inseridos. Portanto, sempre respeitar o conceito estrutural de nome e da pasta que deve
   está coligado. 

## **Tutorial de como rodar os scripts em sua máquina**
   Deve colocar o caminho do script no FileLIst, exemplo de caminho válido: DDL/01.dia_semana_ddl.sql e obedecer a sequencia numerica
   ter o git bash instalado e entrar na pasta do projeto de scripts e rodar no terminal dele o seguinte comando: 
   Para não ter que ficar colocando senha toda hora, passe os seguintes comandos no git bash:

   touch ~/.pgpass =  Cria um arquivo para salvar como uma variável no sistema
   nano ~/.pgpass =  Entrar para editar esse arquivo
   localhost:8080:apartamento:user_app_nord:sua_senha_aqui = cole isso e aperte "crtl+O" para salvar e depois "crtl+X" para sair

   chmod 600 ~/.pgpass =  cole isso no Git bash para ser uso obrigatório e o PostgreSQL não ignorar e pedir senha novamente
   rodar o export PGPASSFILE="$HOME/.pgpass" = para salvar a variável no sistema
   Dentro do VSCODE troque a leitura do arquivo "filelist" de "CRLF" para "LF"
   Rode: ./executa-sql.sh

