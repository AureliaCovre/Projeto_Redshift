# AMAZON REDSHIFT
 
 ### Tecnologias utilizadas:
 * Amazon Redshift
 * Amazon S3
 * Google Data Studio [clique aqui](google data studio: https://lookerstudio.google.com/u/0/navigation/reporting)

### O que é o Amazon Redshift? 
O Amazon Redshift é um serviço de DW oferecido AWS. Ele é projetado para processar e analisar grandes volumes de dados de forma eficiente e escalável. O Redshift é especialmente adequado para executar análises complexas em dados históricos ou operacionais para obter insights para os negócios.

A principal característica do Amazon Redshift é a sua capacidade de processar consultas SQL de maneira rápida e eficiente em grandes conjuntos de dados. Ele é __*orientado a colunas*__ em vez de uma arquitetura de linhas tradicionais encontradas em bancos de dados relacionais convencionais. Isso permite que o Redshift otimize as consultas, pois pode pular as colunas que não são necessárias para uma consulta específica, gerada em um desempenho melhorado.

Além disso, o Redshift é altamente escalável e pode ser dimensionado para atender a diferentes cargas de trabalho e tamanhos de dados. Ele também oferece recursos de segurança, como criptografia de dados em repouso e em trânsito, login de usuário e integração com outros serviços da AWS.

### Roteiro:
- [x] Criar Cluster no Redshift
- [x] Criar banco de dados e tabelas
- [x] Criar Bucket no S3
- [x] Upload de Arquivos 
- [x] Criar Credenciais 
- [x] Carregar dados utilizando Copy
- [x] Criar tabela desmoralizada
- [x] Configurar Redshift para o acesso público
- [x] Conectar Google Data Studio 
- [x] Criar Dashboard


### Passo a passo:
1º Etapa:  Criar um cluster no Redshift. * Não esquecer de cópiar o usúario e senha 

2º Etapa: No Redshift, clicar em "Editor de consultasv2" aplicativo que a propria amazon disponibiliza para interagir com cluster que criamos.
    

3º Etapa: Criação do Banco de dados e estrutura de tabelas [Script](1_criacao_tabelas.sql)

4º Etapa: Criação de um Bucket no Amazon S3 e anexar as tabelas.

5º Etapa: Criar chaves de acesso, para o Redshift se conectar ao bucket S3. Para isso, clicar no seu usúario e em "credenciais de segurança". Clica em chave de acesso --> Criar nova chave de acesso.

6º Etapa: Para carregar os dados, precisamos copiar URI do S3 de cada arquivo. [Script](2_populando_tabelas.sql)

![Clique aqui para ver o print](redshift.PNG)

![Clique aqui para ver o print](select_redshift.PNG)

7º Etapa: Criando uma tabela desnormalizada, concatenando as tabelas existentes para simplificar as consultas. [Script](3_criando_fatovendas.sql)

 ![Clique aqui para ver o print](fatovenda.PNG)
 ![Clique aqui para ver o print](select.PNG)


8º Etapa: Criação de Dashboard via Google Data Studio, para isso primeiramente é necessário liberar DW do Redshift para que fique disponivel publicamente, pois por padrão ele não fica. Entrar no cluster do redshift, clica em "Ações: Modificar a configuração publicamente acessível". Clique em Habilitar. Copiar o Endpoint para fazer a conexão. 

![Google Data Studio](google_data_studio.PNG)

![Dashdoard](dashboard.PNG)

Configuração de acesso especifico: Clique em propriedade --> grupo de segurança --> id do grupo de segurança

Para evitar cobranças, após o procedimento foram excluidos o cluster, bucket, chaves. Verificar se foi gerado snapshots e excluir também.






    
