# Prática: Programação lógica em Prolog


## Objetivos
Nesta aula, vamos exercitar o uso de listas para resolver problemas variados em Prolog.


## Pré-Requisitos

Esta prática requer que você tenha feito as práticas anteriores e tenha estudado sobre listas em Prolog (<a href="https://docs.google.com/presentation/d/1GwioxL7tPM4S5vdg5Mw6XzC2jRaGsWYWary00-1A9Nk/edit?usp=sharing">slides</a> | <a href="https://drive.google.com/file/d/1Q3h1XK5GZGS8l8RbShw9Rr2OSt5Stjsk/view?usp=sharing">vídeo</a>).

## Entrega

Todas as práticas de Prolog serão entregues no mesmo repositório criado na prática prolog02.

A cada prática, você deverá adicionar arquivos ao repositório, seguindo **exatamente** as instruções quanto aos nomes dos arquivos. Os nomes são padronizados para que os arquivos possam ser recolhidos automaticamente dentro dos repositórios. Arquivos com nomes fora do padrão não serão contabilizados na avaliação, pois não serão localizados nos repositórios.

Você pode organizar seu repositório em pastas como desejar, desde que os arquivos sejam nomeados como solicitado.


## Aquecimento

1. O código em Prolog abaixo define um predicado recursivo `repete`, que será verdadeiro caso a lista L contenha N repetições do símbolo C.


   ```prolog
   repete(0, _, []).
   repete(N, C, L) :- 
	N > 0,
	L = [C | T],
	N1 is N - 1,
	repete(N1, C, T).
   ```

   Sabendo disso, qual será o resultado das seguintes consultas?

   ```
   ?- repete(1,a,L).
   ?- repete(2,b,L).
   ?- repete(-2,b,L).
   ?- repete(2,a,[a,b,c]).
   ?- repete(3,a,[a|T]).
   ```

2. Em Prolog, usa-se `is` quando se deseja o resultado de uma expressão aritmética. Uma expressão pode conter operadores aritméticos habituais de soma, subtração, etc., e também podem usar [funções aritméticas](http://www.swi-prolog.org/pldoc/man?section=functions). Essas funções, ao contrário de predicados, podem ser usadas como em linguagens funcionais. Por exemplo, teste as seguintes consultas que usam funções aritméticas:

   ```
   ?- A is round(9.2).
   ?- B is sqrt(9).
   ?- C is sin(pi/2).
   ?- D is mod(9,3).
   ?- E is random(5).
   ```




## Programação

Entregue esta parte em um arquivo nomeado `prolog03-lists.pl`.


1. Defina um predicado **recursivo** `incN(L1,N,L2)`, de forma que L2 seja uma lista com todos os elementos de L1 somados à constante `N`.

2. Defina um predicado **recursivo** `hasN(L,N)` que seja verdadeiro se L for uma lista de N elementos.


3. Defina um predicado **recursivo** `countdown(N,L)`, de forma que L seja uma lista com os números [N, N-1, N-2, .., 1], sendo N um número positivo. Exemplo:

   ```
   ?- countdown(7,L).
   L = [7, 6, 5, 4, 3, 2, 1].
   ```

4. Defina um predicado **recursivo** `nRandoms(N,L)`, de forma que L seja uma lista com N números gerados aleatoriamente, conforme os exemplos abaixo:

   ```
   ?- nRandoms(3,L).
   L = [60, 92, 28].

   ?- nRandoms(6,L).
   L = [12, 81, 46, 19, 81, 21].

   ?- nRandoms(0,L).
   L = [].
   ```

## Problema de Lógica

Entregue esta parte em um arquivo nomeado `prolog03-logic.pl`.

Escreva um programa em Prolog para resolver o seguinte problema de lógica: *Angela, Bernardo e Carla são crianças premiadas em um show de talentos infantis.
Suas idades são 5, 7 e 8 anos. Uma das crianças ganhou o 1o Lugar.
A menina que ganhou o 2o Lugar é 3 anos mais velha que Angela.
A criança que ganhou o 3o Lugar tem 7 anos.*

A solução do problema deverá reunir todos os dados informados e deduzidos sobre as crianças. Seu programa deverá ter uma regra `solucao(X)` que permita obter a solução do problema na variável `X`.

## Criando enredos de filmes

Esta parte não precisa ser entregue, mas deve ser feita como preparação para outras práticas.

Baixe o programa [`storyfull.pl`](storyfull.pl), que gera enredos de filmes de ficção com alguma aleatoriedade :smile:.

Para executar o programa, carregue-o no SWI-Prolog e digite a seguinte consulta (sem argumentos):
```
?- go.
```
Estude o código do programa e identifique os recursos de Prolog que você já conhece e aqueles que ainda não foram vistos.
