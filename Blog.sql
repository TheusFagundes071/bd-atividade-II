-- Criar tabela
CREATE DATABASE Blog;

-- Mostrar Tabela
SHOW DATABASES;

-- Acessa Banco de Dados
USE Blog;


CREATE TABLE Blog.Artigo(
ID int(30) AUTO_INCREMENT PRIMARY KEY,
Titulo VARCHAR(255) NOT NULL,
Conteudo TEXT NOT NULL,
DataPublicacao DATE NOT NULL
);



CREATE TABLE Blog.Comentario(
ID int(30) AUTO_INCREMENT PRIMARY KEY,
ID_Artigo int NOT NULL,
Autor VARCHAR(255) NOT NULL,
Texto TEXT NOT NULL,
DataComentario DATE,
foreign key(ID_Artigo) References Artigo(ID)
);

-- INSERINDO DADOS DO ARTIGO

INSERT INTO Blog.Artigo(Titulo, Conteudo, DataPublicacao)
VALUES ('Bíblia','Conteudo Bíblico','1990-05-02');

INSERT INTO Blog.Artigo(Titulo, Conteudo, DataPublicacao)
VALUES ('O Lobo Das Planícies','Lobo e as Planície','2002-06-02');

INSERT INTO Blog.Artigo(Titulo, Conteudo, DataPublicacao)
VALUES ('Cinderela','Sobre a Princesa','1980-10-06');

INSERT INTO Blog.Artigo(Titulo, Conteudo, DataPublicacao)
VALUES ('Matheus Lindo','Sobre o programador mais bonito','2003-06-06');

INSERT INTO Blog.Artigo(Titulo, Conteudo, DataPublicacao)
VALUES ('Elon Musk','Conteudo sobre Elon Musk','1999-06-07');

-- INSERINDO COMENTARIOS
INSERT INTO Blog.Comentario(ID_Artigo, Autor, Texto, DataComentario)
VALUES (1,'Deus','Bom livro','2000-06-06');

INSERT INTO Blog.Comentario(ID_Artigo, Autor, Texto, DataComentario)
VALUES (2,'Conn Iggnulden','Bom livro','1999-02-03');

INSERT INTO Blog.Comentario(ID_Artigo, Autor, Texto, DataComentario)
VALUES (3,'Desconhecido','Bom livro','2003-02-01');

INSERT INTO Blog.Comentario(ID_Artigo, Autor, Texto, DataComentario)
VALUES (4,'Matheus','Ótimo livro','2003-06-06');

INSERT INTO Blog.Comentario(ID_Artigo, Autor, Texto, DataComentario)
VALUES (5,'Elon Musk','Ótimo livro','2010-05-10');











SELECT * FROM Blog.Comentario;



