--1 -Buscar Nome e Ano dos Filmes

select
	Nome,
	Ano
 from Filmes 


 --2 -Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

 select
	Nome,
	Ano,
	Duracao
 from Filmes 
 order by ANO  asc

 --3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

 select
	nome,
	ano,
	Duracao
 from Filmes
 where Id = 28


 --4 - Buscar os filmes lançados em 1997
 select * from filmes 
 where  ano = '1997'

 --5 - Buscar os filmes lançados APÓS o ano 2000
  select 
  nome,
  ano,
  Duracao
  from filmes 
  where ano > 2000

  --6 -Buscar os filmes com a duração maior que 100 e menor que 150, ordenando pela duração em ordem crescente
    select 
  nome,
  ano,
  Duracao
  from filmes 
  where Duracao > 100 and Duracao < 150
  order by Duracao asc

  --7 - Buscar a quantidade de filmes lançados no ano, agrupando por ano, ordenando pela duração em ordem decrescente
select 
ano,
count(*) Quantidade
from Filmes
group by Ano 
order by Quantidade desc

--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
select 
PrimeiroNome,
UltimoNome,
Genero
from  Atores
where Genero = 'M'

--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select 
PrimeiroNome,
UltimoNome,
Genero
from  Atores
where Genero = 'F'
order by PrimeiroNome asc


--10 - Buscar o nome do filme e o gênero
select 
F.Nome,
G.Genero
from Filmes F
inner join FilmesGenero FG on F.Id = FG.IdFilme
inner join Generos G on FG.IdGenero = G.Id

--11 -Buscar o nome do filme e o gênero do tipo "Mistério"
select 
F.Nome,
G.Genero
from Filmes F
inner join FilmesGenero FG on F.Id = FG.IdFilme
inner join Generos G on FG.IdGenero = G.Id
Where G.Genero = 'Mistério'

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select 
F.Nome,
A.PrimeiroNome,
A.UltimoNome,
EF.Papel
from Filmes F
inner join ElencoFilme EF on F.Id = EF.IdFilme
inner join Atores A on EF.IdAtor = A.Id