 -- 1 - Buscar o nome e ano dos filmes

SELECT 
	Nome, 
	Ano
FROM Filmes;

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT 
	Nome, 
	Ano,
	Duracao
FROM Filmes
ORDER BY Ano ASC;

-- 3 - Buscar pelo filme "De Volta para o Futuro", trazendo o nome, ano e a dura��o

SELECT 
	Nome, 
	Ano, 
	Duracao
FROM Filmes
WHERE Nome = 'De Volta Para o Futuro';

-- 4 - Buscar os filmes lan�ados em 1997

SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = 1997;

-- 5 - Buscar os filmes lan�ados AP�S o ano 2000

SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > 2000;

-- 6 - Buscar os filmes com a dura��o maior que 100 e menor que 150, ordenando pela dura��o em ordem crescente

SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

-- 7 - Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela dura��o em ordem decrescente

SELECT 
	Ano, 
	COUNT(*) AS QuantidadeFilmes
FROM Filmes
GROUP BY Ano
ORDER BY QuantidadeFilmes DESC;

-- 8 - Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome

SELECT 
	PrimeiroNome, 
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M';

-- 9 - Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

SELECT 
	PrimeiroNome, 
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

-- 10 - Buscar o nome do filme e o g�nero

SELECT 
	F.Nome AS NomeFilme, 
	G.Genero AS NomeGenero
FROM Filmes AS F
JOIN FilmesGenero AS FG ON F.Id = FG.IDFilme
JOIN Generos AS G ON FG.IDGenero = G.Id;

-- 11 - Buscar o nome do filme e o g�nero do tipo "Mist�rio"

SELECT 
	F.Nome AS NomeFilme, 
	G.Genero AS NomeGenero
FROM Filmes AS F
JOIN FilmesGenero AS FG ON F.Id = FG.IDFilme
JOIN Generos AS G ON FG.IDGenero = G.Id
WHERE G.Id = 10;

-- 12. Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel:

SELECT 
	F.Nome AS NomeFilme, 
	A.PrimeiroNome AS PrimeiroNomeAtor, 
	A.UltimoNome AS UltimoNomeAtor, EF.Papel
FROM Filmes AS F
JOIN ElencoFilme AS EF ON F.Id = EF.IDFilme
JOIN Atores AS A ON EF.IdAtor = A.Id;
