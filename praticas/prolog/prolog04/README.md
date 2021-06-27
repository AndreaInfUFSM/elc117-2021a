# Prática: Programação lógica em Prolog


## Objetivos
Nesta aula, vamos exercitar tudo o que já vimos sobre Prolog.


## Pré-Requisitos

Você já fez as outras [práticas de Prolog](../../prolog), inclusive as partes que não precisavam ser entregues (mas que eram para ser feitas mesmo assim)? 

Se não fez, ~~sente e chore~~ ligue o turbo e faça uma "imersão" em Prolog pra não cair naquela velha armadilha do tempo -- não, o tempo não vai parar esperando você colocar tudo em dia, mas você sempre pode assumir o controle para usá-lo melhor.


## Entrega

Todas as práticas de Prolog serão entregues no mesmo repositório criado na prática prolog02.

A cada prática, você deverá adicionar arquivos ao repositório, seguindo **exatamente** as instruções quanto aos nomes dos arquivos. 

Você pode organizar seu repositório em pastas como desejar, desde que os arquivos sejam nomeados como solicitado.


## Aquecimento

1. O código abaixo faz parte do programa `storyfull.pl`, que você deve ter visto no final da prática [prolog03](../prolog03). Veja que o predicado `tellstory` é recursivo e usa alguns predicados pré-definidos no Prolog: `random_member`, `atomic`, `write` e `nl`.


   ```prolog
   tellStory([]).
   tellStory(P) :- P = choose(L), random_member(M, L), tellStory(M).
   tellStory(A) :- atomic(A), write(A), nl.
   tellStory([H|T]) :- tellStory(H), tellStory(T).
   ```

   Teste separadamente os predicados pré-definidos para entendê-los melhor. O que você entendeu sobre o predicado `tellStory`? Quais são os casos recursivos? E os casos de parada? 


2. O código em Prolog abaixo define o predicado recursivo `filterPositive(L1,L2)`, que é verdadeiro se L2 for uma lista só com os elementos positivos de L1.
   ```
   filterPositive([],[]).
   filterPositive([H|T],L) :- H > 0, L = [H|T1], filterPositive(T,T1).
   filterPositive([H|T],L) :- H =< 0, filterPositive(T,L).
   ```
   Teste este predicado com as seguintes consultas:
   ```
   ?- filterPositive([-1,-2],L).
   ?- filterPositive([-1,0,1,-2,9],[1,9]).
   ?- A is mod(5, 3), L1 = [A,3,0], filterPositive(L1,L2).
   ```



## Predicados com listas

Entregue esta parte em um arquivo nomeado `prolog04-lists.pl`.


1. Defina um predicado **recursivo** `isPositive(L)` que deverá ser verdadeiro se a lista L tiver apenas elementos positivos. Exemplo de uso:
   ```
      ?- isPositive([1,-2,3,4]).
      false.
   ```   

2. Defina um predicado **recursivo** `filterEven(L1,L2)` de modo que L2 seja uma lista só com os elementos pares contidos em L1.
   ```
   ?- filterEven([1,3],L).
   L = [].

   ?- filterEven([0,1,2,3],L).
   L = [0, 2] 
   ```

3. Defina um predicado **recursivo** `ziplus(L1,L2,L3)`, de forma que cada elemento da lista L3 seja a soma dos elementos de L1 e L2 na mesma posição. Exemplo:
   ```
   ?- ziplus([1,2,3],[5,5,5],L). 
   L = [6, 7, 8].
   ```



## Problema de lógica

Entregue esta parte em um arquivo nomeado `prolog04-logic.pl`.

Nesta parte, você vai completar o código [`prolog04-logic.pl`](prolog04-logic.pl) para resolver o problema de lógica descrito em http://rachacuca.com.br/logica/problemas/esquadrilha-de-avioes/. Nesse problema, há uma esquadrilha de 5 aviões em um show aéreo. Cada um deles solta fumaça de uma cor e possui uma anomalia diferente. Além disso, os aviões são comandados por cinco experientes pilotos que praticam um esporte cada um, além de preferirem uma bebida distinta. O programa deve encontrar todas as informações a partir das seguintes dicas:  

    1. O avião do Cel. Milton solta fumaça vermelha.
    2. O rádio transmissor do Ten. Walter está com problemas.
    3. O piloto do avião que solta fumaça verde adora pescar.
    4. O Major Rui joga futebol nos finais de semana.
    5. O avião que solta fumaça verde está imediatamente à direita do avião que solta fumaça branca.
    6. O piloto que bebe leite está com o altímetro desregulado.
    7. O piloto do avião que solta fumaça preta bebe cerveja.
    8. O praticante de natação pilota o avião que solta fumaça vermelha.
    9. O Cap. Farfarelli está na ponta esquerda da formação.
    10. O piloto que bebe café voa ao lado do avião que está com pane no sistema hidráulico.
    11. O piloto que bebe cerveja voa ao lado do piloto que enfrenta problemas na bússola.
    12. O homem que pratica equitação gosta de beber chá.
    13. O Cap. Nascimento bebe somente água.
    14. O Cap. Farfarelli voa ao lado do avião que solta fumaça azul.
    15. Na formação, há um avião entre o que tem problema hidráulico e o com pane no altímetro.
    16. Um dos pilotos joga tênis.
    17. Há um avião com problema de temperatura.
    18. Você deverá usar o predicado `um_entre`, que você criou em uma prática anterior.


## Raciocínio dedutivo

Prolog pode ser usado em sistemas especialistas que simulam raciocínio dedutivo. 

Nesta prática, vamos trabalhar com um código simples que ilustra isso: um programa que tenta adivinhar um animal a partir de perguntas sobre suas características: [prolog04-animal.pl](prolog04-animal.pl).

### Executando o programa

1. Para executar o programa, carregue-o no SWI-Prolog/SWISH e use o predicado `go`:
   ```
   ?- go.
   ```
   Você deverá digitar `yes.` ou `no.` para responder às perguntas.
   
2. Veja que o programa é muito simples e só consegue fazer deduções sobre estes "animais": human, giraffe ou zebra. Teste o programa outras vezes, variando as repostas.

   
### Modificando o programa

**ATENÇÃO!** Neste exercício você vai ter que usar o chat do Discord!


1. Analise o programa e localize as regras que fazem, por exemplo, o programa deduzir que o animal é uma zebra.


2. Localize as linhas de código que contêm perguntas mostradas ao usuário, tanto as fixas como as perguntas que variam conforme o usuário vai respondendo.


3. Você vai modificar o programa para que ele seja capaz de identificar outro animal à sua escolha. **Massss... ATENÇÃO!** Cada estudante vai ter que escolher um animal diferente, então você vai ter que escrever no Discord o animal escolhido, depois de fazer uma busca para ver se ninguém escolheu o mesmo animal antes.

4. Para facilitar a busca no Discord, você deve escrever no chat num formato padronizado. Por exemplo, se o animal fosse uma zebra, você escreveria:
   ```
   prolog04-animal zebra
   ```
   Ou seja, escreva `prolog04-animal` seguido do nome do animal.
   
5. Modifique o programa reusando regras sempre que possível e adicionando as que forem necessárias.

6. Entregue o arquivo `prolog04-animal.pl` modificado.



## Criando enredos de filmes

Entregue esta parte em um arquivo nomeado `prolog04-story.pl`.

Nesta parte, você deverá criar um programa semelhante a `storyfull.pl` da prática [prolog03](../prolog03), para gerar outros textos aleatoriamente, em português ou em inglês. Os textos devem fazer algum sentido, mesmo que sejam enredos de ficção.

Você não deve apenas traduzir ou substituir os textos do programa original. Também não precisa ser um programa tão longo quanto o original. Você deve pensar em diferentes ramificações para o seu texto/enredo e codificá-las em Prolog, se inspirando no programa original.

Este é um exercício em que se espera uma produção original de cada estudante. Se seu texto/programa for muito semelhante aos demais, haverá desconto na nota.


