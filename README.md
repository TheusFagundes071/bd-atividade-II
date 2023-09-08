# bd-atividade-II
Exercício 1: Gerenciando Pedidos de Clientes
Considere duas tabelas em um sistema de gerenciamento de pedidos de clientes: "Clientes" e "Pedidos". Cada cliente pode fazer vários pedidos, mas cada pedido está associado a apenas um cliente.

Tabela "Clientes":
Campos: ClienteID (Chave Primária), Nome, Email, Telefone
Tabela "Pedidos":
Campos: PedidoID (Chave Primária), ClienteID (Chave Estrangeira referenciando ClienteID na tabela Clientes), DataPedido, ValorTotal
Implementação: 
Crie as instruções SQL para criar essas duas tabelas com os relacionamentos apropriados.
Insira 05 registros para cada tabela criada.

Exercício 2: Gerenciando Comentários de Blog
Suponha que você esteja criando um banco de dados para um sistema de blog com duas tabelas: "Artigos" e "Comentários". Cada artigo pode ter vários comentários, mas cada comentário está associado a apenas um artigo.

Tabela "Artigos":
Campos: ArtigoID (Chave Primária), Título, Conteúdo, DataPublicação
Tabela "Comentários":
Campos: ComentarioID (Chave Primária), ArtigoID (Chave Estrangeira referenciando ArtigoID na tabela Artigos), Autor, Texto, DataComentario
Implementação: 
Crie as instruções SQL para criar essas duas tabelas com os relacionamentos apropriados.
Insira 05 registros para cada tabela criada.
