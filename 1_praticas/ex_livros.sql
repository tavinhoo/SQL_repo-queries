CREATE DATABASE LIVRARIA;

USE LIVRARIA;

CREATE TABLE AUTORES(
    IDAUTOR INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(255) NOT NULL,
    PAIS_ORIGEM CHAR(2) NOT NULL
);

CREATE TABLE LIVROS(
    IDLIVRO INT PRIMARY KEY AUTO_INCREMENT,
    TITULO VARCHAR(255) NOT NULL,
    ANO_PUB INT(4) NOT NULL,
    ID_AUTOR INT,
    FOREIGN KEY(ID_AUTOR) REFERENCES AUTORES(IDAUTOR)
);

INSERT INTO AUTORES VALUES
(NULL, 'Stephen King', 'US'),
(NULL, 'J.K. Rowling', 'UK'),
(NULL, 'George Orwell', 'UK');

INSERT INTO Livros (TITULO, ANO_PUB, ID_AUTOR) VALUES
('O Iluminado', 1977, 1),
('Harry Potter e a Pedra Filosofal', 1997, 2),
('1984', 1949, 3);
/*

1 - Listar todos os autores e seus respectivos livros.
2 - Encontrar o número total de livros na biblioteca.
3 - Encontrar todos os livros publicados após 2000.
4 - Encontrar todos os autores que são do Reino Unido.
5 - Encontrar todos os livros escritos por um autor específico.

*/

/* 1 */

SELECT A.NOME, A.PAIS_ORIGEM, L.TITULO, L.ANO_PUB
FROM AUTORES A 
INNER JOIN LIVROS L
ON A.IDAUTOR = L.ID_AUTOR;

+---------------+-------------+----------------------------------+---------+
| NOME          | PAIS_ORIGEM | TITULO                           | ANO_PUB |
+---------------+-------------+----------------------------------+---------+
| Stephen King  | US          | O Iluminado                      |    1977 |
| J.K. Rowling  | UK          | Harry Potter e a Pedra Filosofal |    1997 |
| George Orwell | UK          | 1984                             |    1949 |
+---------------+-------------+----------------------------------+---------+

/* 2 */

SELECT COUNT(*)
FROM LIVROS;

/* 3 */

SELECT TITULO 
FROM LIVROS
WHERE ANO_PUB > 2000;

/* 4 */

SELECT NOME, PAIS_ORIGEM
FROM AUTORES 
WHERE PAIS_ORIGEM = "UK";

/* 5 */

SELECT * 
FROM LIVROS
WHERE ID_AUTOR = 1;