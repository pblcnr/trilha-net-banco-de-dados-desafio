-- 01
SELECT Nome, Ano
FROM Filmes

-- 02
SELECT Nome, Ano, Duracao
FROM Filmes
ORDER BY Ano ASC

-- 03
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

-- 04
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano = '1997'

-- 05
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano > '2000'

-- 06
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > '100' AND Duracao < '150'
ORDER BY Duracao ASC

-- 07
SELECT Ano, COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 08
SELECT *
FROM Atores
WHERE Genero = 'M'

-- 09
SELECT *
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10
SELECT F.Nome, G.Genero
FROM Filmes AS F
INNER JOIN FilmesGenero AS FG
	ON F.Id = FG.IdFilme
INNER JOIN Generos AS G
	ON G.Id = FG.IdGenero

-- 11
SELECT F.Nome, G.Genero
FROM FILMES AS F
INNER JOIN FilmesGenero AS FG
	ON F.Id = FG.IdFilme
INNER JOIN Generos AS G
	ON G.Id = FG.IdGenero
WHERE G.Genero = 'Mist�rio'

-- 12
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel
FROM Filmes AS F
INNER JOIN ElencoFilme AS EF
	ON F.Id = EF.IdFilme
INNER JOIN Atores AS A
	ON A.Id = EF.IdAtor
