# Prática: Programação lógica em Prolog


## Objetivos
Nesta aula, você vai ter um primeiro contato com fatos, regras, consultas em Prolog.



## Pré-Requisitos

Antes de fazer esta prática, assista àss aulas:
- Introdução à programação lógica (<a href="https://docs.google.com/presentation/d/1ArYL8yUBFGEGstNHiOxxrwH3NOc8avOwPgr2WNaXsjc/edit?usp=sharing">slides</a> | <a href="https://drive.google.com/file/d/14hIn_87Q8J-qpH_kHTHTc2IIu6KO37ln/view?usp=sharing">vídeo</a>) 
- Introdução à linguagem Prolog: fatos, regras, consultas e variáveis (<a href="https://docs.google.com/presentation/d/1b-8KJy_nxfbzCt4UgX2snaMkyoVk0VjW0AT2oV9VN0I/edit?usp=sharing">slides</a> | <a href="https://drive.google.com/file/d/1O0G1n3Eson0d4KqRk9JkZKHnRHiobplv/view?usp=sharing">vídeo</a>).


## Aquecimento

Vamos usar o SWI-Prolog online no ambiente SWISH: https://swish.swi-prolog.org/

No primeiro acesso ao SWISH, clique em "(Create a) Program" para abrir o editor. Na área de edição que vai aparecer, copie a seguinte base de fatos e regras sobre pessoas e localizações geográficas ([prolog01.pl](prolog01.pl)):

   ```prolog
   localizado_em(santa_maria, rs). 
   localizado_em(salvador, bahia). 
   localizado_em(rs, brasil). 
   localizado_em(bahia, brasil). 
   localizado_em(paris, franca). 
   localizado_em(franca, europa). 
   
   nasceu_em(andre, santa_maria). 
   nasceu_em(joao, salvador). 
   nasceu_em(X, Y) :- localizado_em(Z, Y), nasceu_em(X, Z). 
   
   mora_em(andre, paris). 
   mora_em(joao, salvador). 
   mora_em(X, Y) :- localizado_em(Z, Y), mora_em(X, Z). 

   idade(andre, 25). 
   idade(joao, 32). 

   gaucho(X) :- nasceu_em(X, rs). 
   brasileiro(X) :- nasceu_em(X, brasil). 
   europeu(X) :- nasceu_em(X, europa).
   ```


Para outras práticas, você pode continuar usando o SWISH ou fazer download do [SWI-Prolog](https://www.swi-prolog.org/Download.html) para usá-lo localmente.

<!-- Depois de tentar um primeiro contato com um desses ambientes, veja este [vídeo](https://drive.google.com/file/d/13mAGl5BLEcruIgG7tLuxa2TnoeRKQdx5/view?usp=sharing) que explica o programa e sua execução no SWISH.
-->

## Exercícios

1. Depois de copiar o programa para o editor, execute cada uma das consultas abaixo na área de consulta interativa (?-). Observe as respostas e compare-as com os fatos e regras do programa.

   ```prolog
   ?- europeu(andre).
   ?- gaucho(andre).
   ?- brasileiro(X).
   ```
   Obs.: Quando a resposta estiver acompanhada de botões, clique em "Next" no SWISH para ver as próximas. Se estiver usando o SWI-Prolog localmente, e a resposta não tiver um ponto no final, tecle ";" após cada resposta para descobrir se existem outras, ou tecle "Enter" (ou ".") após a primeira resposta se quiser continuar sem procurar outras.
   
2. Agora você vai acrescentar fatos ao programa, seguindo o formato dos predicados já definidos (`nasceu_em`, `idade`). Expresse as seguintes afirmações em um ou mais **fatos** Prolog (coloque cada fato antes do primeiro que usar o mesmo predicado):

   ```
   "Joana nasceu em Salvador."
   "Joana tem 22 anos."
   "Michel nasceu em Paris e tem 40 anos." 
   ```
   
3. Expresse as seguintes perguntas sob forma de **consultas** Prolog (teste-as na área de consulta/interpretador):

   ```
   "José nasceu no Brasil?"
   "Quais são as pessoas nascidas na Europa?"
   "Quais são as pessoas com mais de 30 anos?"
   "Quem são os brasileiros com menos de 30 anos?"
   ```
   
4. Crie um predicado `maisVelho(A,B)` que permita deduzir se a pessoa A é mais velha que a pessoa B. Use o predicado idade. Exemplo de uso:

   ```prolog
   ?- maisVelho(joao, andre).
   true.
   ```

5. Em Prolog, o operador `is` serve para calcular uma expressão aritmética e atribuir seu valor a uma variável, como nos exemplos abaixo:

   ```prolog
   soma(A,B,C) :- C is A + B. 
   pred(A,B,C) :- X is (A+B)^2, C is X*2+1.
   ```
   
   Sabendo disso, incorpore os predicadis acima ao programa e verifique qual será o resultado das consultas abaixo:

   ```prolog
   ?- soma(8,9,3).
   ?- pred(3,2,X).
   ```

6. Usando o operador `is`, crie um predicado `anoNasc(P,A)` que permita deduzir o ano aproximado de nascimento (A) de uma pessoa (P). Use o predicado idade e o ano corrente como referência. Exemplo de uso: 

   ```prolog
   ?- anoNasc(joao, A).
   A = 1989.
   ```
   
7. Em Prolog, listas são tipos de dados nativos e se representam com colchetes, assim como em Haskell. Existem também vários predicados pré-definidos que manipulam listas. O predicado [`member`](https://www.swi-prolog.org/pldoc/man?predicate=member/2) recebe um elemento e uma lista, resultando verdadeiro se o elemento fizer parte da lista.  Teste as consultas abaixo com o predicado `member`. Sempre que possível, continue a busca após o primeiro resultado.

   ```prolog
   ?- member(a, [a,b,c]).
   ?- member(x, [a,b,c]).
   ?- member(A, [a,b,c]).
   ?- member(a, [a,b,c,a]).
   ```
   
8. O predicado [`length`](https://www.swi-prolog.org/pldoc/man?predicate=length/2) é outro exemplo que se aplica a listas. Dada uma lista, este predicado obtém ou verifica o comprimento da lista. Teste as consultas abaixo com o predicado `length`.

   ```prolog
   ?- length([a,b,c], L).
   ?- length([], X).
   ?- length(a, X).
   ?- length([a,b,c], 2).
   ```


9. O predicado [`nextto`](https://www.swi-prolog.org/pldoc/man?predicate=nextto/3) também se aplica a listas. Este predicado recebe argumentos X, Y e uma lista L, e é verdadeiro Y está imediatamente após X na lista L. Teste as consultas abaixo:

   ```prolog
   ?- nextto(1, 2, [1,2,3]).
   ?- nextto(2, Y, [1,2,3]).
   ?- nextto(4, X, [1,2,3]).
   ?- nextto(1, 2, [1,2,3,1,2]).
   ```
   
   
10. Usando lista em Prolog, crie um predicado `isVowel(X)` que verifique se um dado símbolo X é uma vogal. Dica: você vai precisar de uma lista de vogais possíveis: `[a,e,i,o,u]`. Exemplo de uso:

   ```prolog
   ?- isVowel(a).
   true.
   ?- isVowel(b).
   false.
   ```

## Entrega
Esta prática não precisa ser entregue, mas deve ser feita o mais rápido possível, pois as práticas seguintes dependem dela.

## Soluções
O arquivo [prolog01-solucao.pl](prolog01-solucao.pl) tem soluções e comentários sobre cada questão.
