-- 1
Select Nome,Ano From Filmes


-- 2
Select Nome,Ano,Duracao From Filmes ORDER BY ANO ASC 

-- 3
Select Nome, Ano , Duracao From Filmes WHERE Nome = 'De Volta para o Futuro'

-- 4
Select Nome, Ano , Duracao From Filmes WHERE Ano = 1997


-- 5
Select Nome, Ano , Duracao From Filmes WHERE Ano > 2000

-- 6 
Select Nome, Ano , Duracao From Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC



-- 7
Select Ano, Count(*) Quantidade
From Filmes Group by Ano Order by Quantidade DESC

-- 8 
Select PrimeiroNome, UltimoNome, Genero from Atores Where Genero = 'M'

-- 9
Select PrimeiroNome, UltimoNome, Genero from Atores Where Genero = 'F'ORDER BY PrimeiroNome



-- 10

Select 
	filmes.Nome,
	generos.Genero
from 
	filmes 
	inner join filmesGenero on filmes.id = filmesGenero.idFilme
	inner join generos on generos.id = filmesGenero.IdGenero


-- 11

Select 
	filmes.Nome,
	generos.Genero
from 
	filmes 
	inner join filmesGenero on filmes.id = filmesGenero.idFilme
	inner join generos on generos.id = filmesGenero.IdGenero
	where generos.id = 10
	

-- 12


Select 
	filmes.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	E.Papel
from 
	filmes 
	inner join ElencoFilme E on filmes.id = E.idFilme
	inner join Atores A on E.idAtor = A.id

	