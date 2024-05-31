-- TESTE 1 Buscar o nome e ano dos filmes

SELECT  Nome,
        Ano     
FROM Filmes

-- TESTE 2 Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT * FROM Filmes
ORDER BY Ano ASC

--TESTE3 Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

SELECT * FROM Filmes
WHERE Nome = 'De volta para o futuro' 

--TESTE 4 Buscar os filmes lançados em 1997

SELECT * FROM Filmes
WHERE Ano = '1997'
ORDER BY Nome, Ano

-- TESTE 5 Buscar os filmes lançados APÓS o ano 2000

SELECT * FROM Filmes
WHERE Ano LIKE  '2%'
ORDER BY Ano ASC 

-- TESTE 6 Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

SELECT * FROM Filmes
WHERE Duracao > 100 AND Duracao <150
ORDER BY Duracao ASC

--TESTE 7 Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

SELECT
      Ano,
	 
	  COUNT(*) Quantidade  
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--TESTE 8 Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

SELECT
     Genero  = 'M',  +
	 PrimeiroNome + ' ' + UltimoNome Nome 

FROM Atores
ORDER BY PrimeiroNome  ASC

--TESTE 9 Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

SELECT * FROM Atores
WHERE Genero = 'F' 
ORDER BY PrimeiroNome ASC,  UltimoNome

-- TESTE 10 Buscar o nome do filme e o gênero

SELECT 
     Filmes.Nome,
	 Generos.Genero
FROM
     Filmes
 INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
 INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

 -- TESTE 11 Buscar o nome do filme e o gênero do tipo "Mistério"

 SELECT 
     Filmes.Nome,
	 Generos.Genero
FROM
     Filmes
 INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
 INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
 WHERE Genero = 'Mistério' 
 
 -- TESTE 12 Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
	   
  SELECT
       Filmes.Nome,
	   Atores.PrimeiroNome,
	   Atores.UltimoNome, 
	   ElencoFilme.Papel
	   
FROM
     Filmes
INNER JOIN ElencoFilme ON Filmes.Id  = ElencoFilme.IdFilme
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id
 
 
 
 
 --MEUS TESTES

--12
 SELECT
       Filmes.Nome,
	   Atores.PrimeiroNome + '  ' + Atores.UltimoNome Atores, 
	   ElencoFilme.Papel
	   
FROM
     Filmes
INNER JOIN ElencoFilme ON Filmes.Id  = ElencoFilme.IdFilme
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id

-- COMPLETO

SELECT 
      Generos.Genero,
	  Filmes.Nome,
	  Atores.PrimeiroNome + '  ' + Atores.UltimoNome Atores, 
	  ElencoFilme.Papel

	FROM
	Filmes

 INNER JOIN ElencoFilme ON Filmes.Id  = ElencoFilme.IdFilme
 INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id
 INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
 INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id



 
	
	
	