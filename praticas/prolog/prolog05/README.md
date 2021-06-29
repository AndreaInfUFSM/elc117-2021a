# Prática: Programação lógica em Prolog


## Objetivos

Nesta prática, vamos usar alguns recursos do SWI-Prolog para entender e controlar a execução do processo de busca em Prolog, que ocorre sempre que fazemos uma consulta.


## Pré-Requisitos 

Você deve ter estudado o material sobre controle de execução em Prolog (<a href="https://docs.google.com/presentation/d/1bCjpXehsiJet7a6WRd3cR0MxFNDLGQHQlMISqy00650/edit?usp=sharing">slides</a> | <a href="https://drive.google.com/file/d/1CidcdwfVqrl7OGyqjDOm0hp5a1DT9Wi0/view?usp=sharing">vídeo</a>).

## Entrega

Esta prática não precisa ser entregue! Mas nem por isso você vai deixar de fazê-la, né?



   
## Exercícios com trace



1. Baixe o programa [prolog-execucao.pl](prolog-execucao.pl) ou abra-o no SWISH em [https://swish.swi-prolog.org/p/prolog-execucao.pl](https://swish.swi-prolog.org/p/prolog-execucao.pl). O ambiente integrado do SWISH tende a ser melhor para esta prática.

2. Faça as execuções passo-a-passo que estão nos <a href="https://docs.google.com/presentation/d/1bCjpXehsiJet7a6WRd3cR0MxFNDLGQHQlMISqy00650/edit?usp=sharing">slides</a> ou <a href="https://drive.google.com/file/d/1CidcdwfVqrl7OGyqjDOm0hp5a1DT9Wi0/view?usp=sharing">vídeo</a>). 

3. **ATENÇÃO:** Para esta prática, há diferenças marcantes entre o SWI-Prolog instalado localmente e o SWISH:
   - No SWI-Prolog instalado localmente, o modo `trace` vale para todas consultas seguintes e é desativado com `nodebug`. Fora do modo `trace`, você deve usar ";" para continuar o processo de busca depois de encontrar uma solução.
   - No SWISH, é preciso ativar o trace a cada consulta, conforme mostrado no vídeo. Sem o trace, você deve usar o botão Next para continuar o processo de busca.

4. Analise o código abaixo, que está em [prolog-execucao.pl](prolog-execucao.pl):

   ```prolog
   ismember(X, [X|_]).        % ismember(X, [Head|Tail]) is true if X = Head 
                              % that is, if X is the head of the list
   ismember(X, [_|Tail]) :-   % or if X is a member of Tail,
     ismember(X, Tail).       % ie. if ismember(X, Tail) is true.
   ```

5. Execute as seguintes consultas no modo `trace`. Sempre que o interpretador parar mostrando um resultado, digite ";" para continuar. No SWISH, clique em Next. Note que em algum momento não haverá mais continuidade possível.
   ```
   ?- trace.
   [trace]  ?- ismember(a,[a,b,c,d]).
   [trace]  ?- ismember(a,[b,c,d,a]).
   [trace]  ?- ismember(z,[a,b,c,d]).
   [trace]  ?- ismember(X,[a,b,c]).
   ```

## Exercícios com cut

Em Prolog, o operador **!** (leia-se: cut) é usado para **impedir o retrocesso (backtracking)** na avaliação de um predicado durante uma consulta. Por exemplo, na avaliação de uma regra, se uma variável X recebe um valor 1 e depois é feito um cut, o processo de inferência Prolog vai considerar que o valor 1 é a única instância possível para X, mesmo que existam outras possibilidades na base de dados. 


1. Analise o código Prolog abaixo: 

   ```prolog
   b(2).
   b(3).
   c(4).
   c(5).
   regra1(X, Y) :- b(X), c(Y).
   regra2(X, Y) :- b(X), !, c(Y).
   ```

2. Considerando o programa acima, qual será o resultado da seguinte consulta? 

   ```
   ?- regra1(X,Y).
   ```
    Execute a consulta e verifique se sua resposta está correta. Obs: use **;** ou Next para buscar todas as respostas possíveis. 

3. Ainda considerando o mesmo programa, qual será o resultado da seguinte consulta? 
   ```
   ?- regra2(X,Y).
   ```
    Execute a consulta para verificar se sua resposta está correta, lembrando de usar **;** ou Next para buscar todas as respostas possíveis. 

4. Ative o modo de rastreamento (**trace**) e re-execute as consultas acima. Observe a ocorrência de **backtracking (Redo)** nos 2 casos. 

5. Localize os predicados `fatv1`, `fatv2` e `fatv3` em [prolog-execucao.pl](prolog-execucao.pl). Esses predicados ilustram diferentes formas de calcular fatoriais em Prolog. 

6. Execute a consulta abaixo e use **;** para verificar se há outras respostas possíveis. 
   ```
   ?- fatv1(3,N).
   ```

7. A consulta acima deve ter gerado um erro depois que for digitado **;**. Você consegue identificar o motivo deste erro? 

8. Para melhor entender o erro acima, ative o modo **trace** e re-execute a consulta: 
   ```
   ?- trace.
   true.
   [trace]  ?- fatv1(3,N).
   ```
   Dica: quando você cansar de rastrear a execução passo-a-passo, digite `a` (abort) no lugar de Enter. 

9. Compare os predicados ``fatv2`` e ``fatv3`` com o predicado ``fatv1``. 

10. Execute as consultas abaixo, digitando **;** após cada resposta. Compare os resultados com os da consulta anterior (``fatv1``). 
    ```
    ?- fatv2(3,N).
    ?- fatv3(3,N).
    ```

11. Ative o modo **trace** e re-execute as consultas acima, acompanhando suas execuções. 

12. Você consegue identificar alguma vantagem de ``fatv2`` sobre ``fatv3``? 

