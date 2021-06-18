# Prática: Programação lógica em Prolog


## Objetivos
Nesta aula, vamos continuar praticando com fatos, regras e consultas em Prolog. 
Também vamos ver um pouco sobre listas e exemplos de problemas de lógica.


## Pré-Requisitos

Esta prática é para quem fez a prática anterior e estudou sobre fatos, regras, consultas e variáveis em Prolog (<a href="https://docs.google.com/presentation/d/1b-8KJy_nxfbzCt4UgX2snaMkyoVk0VjW0AT2oV9VN0I/edit?usp=sharing">slides</a> | <a href="https://drive.google.com/file/d/1O0G1n3Eson0d4KqRk9JkZKHnRHiobplv/view?usp=sharing">vídeo</a>).

## Entrega

Todas as práticas de Prolog serão entregues em um mesmo repositório que será criado hoje.

A cada prática, você deverá adicionar arquivos ao repositório, seguindo **exatamente** as instruções quanto aos nomes dos arquivos. Os nomes são padronizados para que os arquivos possam ser recolhidos automaticamente dentro dos repositórios. Arquivos com nomes fora do padrão não serão contabilizados na avaliação, pois não serão localizados nos repositórios.

Clique aqui para criar seu repositório para as entregas de Prolog: https://classroom.github.com/a/KtVOyL01


## Aquecimento

1. Considere os seguintes predicados em Prolog:
   ```prolog
   dados(angela, 50, 162).
   dados(joao, 70, 170).
   imc(P, I) :- dados(P, Peso, Altura), I is Peso^2/Altura.
   ```
   Responda: Qual será a resposta para a consulta `?- imc(joana,I`?

2. Nas regras abaixo, `L` representa uma lista:
   ```prolog
   even(X) :- 0 is mod(X, 2). % X é par?
   test(L) :- last(L, U), not(even(U)). % testa último elemento da lista
   ```
   Qual será o resultado desta consulta?
   ```
   ?- test([1,2,3]).
   ```



## Consultas e regras em Prolog


Programas em Prolog podem ser vistos como bases de conhecimento, formadas por predicados expressos como fatos e regras. A partir da base de conhecimento, podemos fazer consultas para obtermos informações que sejam dedutíveis dessa base.

Nesta parte da prática, você vai expressar consultas e adicionar regras em uma base composta por fatos sobre filmes de cinema: [prolog02-movies.pl](prolog02-movies.pl). Examine o código fornecido e entenda as convenções usadas nos predicados, antes de começar os exercícios

Você deverá entregar o arquivo [prolog02-movies.pl](prolog02-movies.pl) acrescido das soluções.

1. Escreva consultas para expressar o seguinte:
   1. Em que ano foi lançado o filme American Beauty?
   2. Quais foram os filmes lançados no ano 2000?
   3. Quais foram os filmes lançados antes de 2000?
   4. Quais foram os filmes lançados depois de 1990?
   5. Encontre um ator que apareceu em mais de um filme.
   6. Encontre um diretor de um filme com a atriz Scarlett Johansson.
   7. Encontre um ator que também tenha dirigido um filme.
   8. Encontre um ator ou atriz que também tenha dirigido um filme.
   9. Encontre o filme co-estrelado pelos atores John Goodman and Jeff Bridges.
   Entregue estas consultas sob forma de comentários dentro de [prolog02-movies.pl](prolog02-movies.pl).
   
2. Adicione regras em [prolog02-movies.pl](prolog02-movies.pl) para expressar o seguinte:

   1. `released_after(M, Y)` : o filme M foi lançado após o ano Y
   2. `released_before(M, Y)` : o filme M foi lançado antes do ano Y
   3. `same_year(M1, M2)` : os filmes M1 e M2 foram lançados no mesmo ano
   4. `co_star(A1, A2)` : o ator ou atriz estão no mesmo filme



## Listas em Prolog

Entregue esta parte em um arquivo nomeado `prolog02-lists.pl`.


A linguagem Prolog, assim como Haskell, suporta listas nativamente. Ao contrário de Haskell, as listas em Prolog podem ser heterogêneas. Elas podem ser vistas como agrupamentos de símbolos.

Existem vários predicados pré-definidos que manipulam listas em Prolog, como já vimos na prática anterior. Aproveitando predicados pré-definidos, faça o seguinte:


1. Defina um predicado `ao_lado(X, Y, L)` para determinar se X está imediatamente ao lado de Y na lista L. Neste caso, X pode estar imediatamente à esquerda OU à direita de Y. Você pode usar o predicado `nextto`, só vai precisar usá-lo 2 vezes.

2. Defina um predicado `um_entre(X, Y, L)` para determinar se os elementos X e Y da lista L estão separados por exatamente um elemento. Você pode usar o predicado `nextto`. Abaixo estão exemplos de consultas com o predicado `um_entre`:
   ```prolog
   ?- um_entre(b,c,[a,b,c,d]).
   false.
   ?- um_entre(b,d,[a,b,c,d]).
   true .
   ?- um_entre(a,d,[a,b,c,d]).
   false.
   ```
   
## Desafios de Lógica em Prolog

Esta parte não precisa ser entregue, mas é importante fazê-la porque vamos precisar desses exemplos mais adiante!

1. Na primeira aula de programação lógica, foi apresentado um exemplo de problema simples de lógica da Olimpíada Brasileira de Informática. Um código em Prolog que resolve este problema está [aqui](mesas.pl), juntamente com o enunciado. Analise este código e execute-o para cada uma das 5 alternativas a verificar, por exemplo `solucao(cintia,alice)`.

2. Você conhece um desafio que circula pela Internet chamado de Charada de Einstein (ou [Enigma de Einsten](https://super.abril.com.br/ideias/charada-atribuida-a-einsten-da-no-no-cerebro-e-vira-hit-na-web/))? Veja [aqui](Einstein.md) a descrição de um problema de lógica e sua resolução em Prolog. Estude o código da solução (o código usa os predicados `nextto` e `ao_lado`).




