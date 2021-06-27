% Exemplo de programa em Prolog (incompleto) que resolve o seguinte problema
% de lógica (http://rachacuca.com.br/logica/problemas/esquadrilha-de-avioes/)
%
% O avião do Cel. Milton solta fumaça vermelha.
% O rádio transmissor do Ten. Walter está com problemas.
% O piloto do avião que solta fumaça verde adora pescar.
% O Major Rui joga futebol nos finais de semana.
% O avião que solta fumaça verde está imediatamente à direita do avião que solta fumaça branca.
% O piloto que bebe leite está com o altímetro desregulado.
% O piloto do avião que solta fumaça preta bebe cerveja.
% O praticante de natação pilota o avião que solta fumaça vermelha.
% O Cap. Farfarelli está na ponta esquerda da formação.
% O piloto que bebe café voa ao lado do avião que está com pane no sistema hidráulico.
% O piloto que bebe cerveja voa ao lado do piloto que enfrenta problemas na bússola.
% O homem que pratica equitação gosta de beber chá.
% O Cap. Nascimento bebe somente água.
% O Cap. Farfarelli voa ao lado do avião que solta fumaça azul.
% Na formação, há um avião entre o que tem problema hidráulico e o com pane no altímetro.

/*
Esta é a solução, verificada no site
?- solucao(Avioes).
Avioes = [aviao(farfarelli, preta, hidraulico, cerveja, tenis), aviao(rui, azul, bussola, cafe, futebol), aviao(milton, vermelha, altimetro, leite, natacao), aviao(walter, branca, radio, cha, equitacao), aviao(nascimento, verde, temperatura, agua, pesca)] ;
*/

% Regras para determinar se X esta ao lado de Y
ao_lado(X, Y, List) :- a_direita(X, Y, List). % X a direita de Y
ao_lado(X, Y, List) :- a_direita(Y, X, List). % Y a direita de X

% Regras para determinar se X esta a direita de Y
% Condicao para fim da recursao:
% X esta a direita de Y se Y esta na primeira posicao e X esta na segunda.
a_direita(X, Y, [Y | [X | _]]).
% Condicao recursiva:
% X esta a direita de Y se estiver a direita de Y no Restante da lista.
a_direita(X, Y, [_ | Restante]) :- a_direita(X, Y, Restante).



% A solucao sera uma lista de avioes, sendo que cada um tem a forma:
% aviao(piloto, cor, anomalia, bebida, esporte)
% member(E, List): verdadeiro se E e um dos elementos de List
% O operador "=" unifica o lado esquerdo com o direito
solucao(Avioes) :-
  Avioes = [aviao(farfarelli,_,_,_,_), _, _, _, _], % lista com 5 elementos
  member(aviao(milton, vermelha, _, _, natacao), Avioes),
  member(aviao(walter, _, radio, _, _), Avioes),
  member(aviao(_, verde, _, _, pesca), Avioes),
  member(aviao(rui, _, _, _, futebol), Avioes),
  a_direita(aviao(_, verde, _, _, _), aviao(_, branca, _, _, _), Avioes),
  member(aviao(_, _, altimetro, leite, _), Avioes),
  member(aviao(_, preta, _, cerveja, _), Avioes),
  % aqui viria a condicao 'farfarelli na ponta esquerda', mas isso ja foi considerado no inicio
  % TODO: escreva abaixo as condicoes faltantes  
  %
  um_entre(aviao(_, _, hidraulico, _, _),aviao(_, _, altimetro, _, _),Avioes).


