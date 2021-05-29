# Prática: Programação funcional em Haskell


## Objetivos :dart:


Nesta aula, vamos exercitar mais facilidades de Haskell para manipulação de listas, mas reforçando tudo que já foi visto até agora. Em especial, vamos usar *list comprehension*. 


## Pré-Requisitos 

Antes desta prática, veja o material sobre geração de listas (<a href="https://docs.google.com/presentation/d/1xht55jFNNFs3Yjc0NyhSWBQJXPjXbuvNsuZ_PaZjIG0/edit?usp=sharing">slides</a>)  e list comprehension
(<a href="https://docs.google.com/presentation/d/1sXeHGzIfvDMh_pd2-U_8SEojk2167DbLAVsLtKncDi8/edit?usp=sharing">slides</a>).

Vamos continuar usando o GHC disponível no Repl.it, ligado ao GitHub. Quem preferir pode instalar o GHC e o Git localmente e trabalhar em seu IDE favorito.


## Repositório de Entrega :envelope_with_arrow:

Você vai continuar entregando seus exercícios no GitHub, como nas outras práticas, só que em outro repositório.

Clique aqui para criar seu repositório desta prática de Haskell: https://classroom.github.com/a/C0AR_h9D

Lembre sempre de fazer **commit e push** para que seus exercícios sejam enviados para o GitHub.





## Aquecimento


Estes exercícios não precisam ser entregues. São apenas um aquecimento.


1. Qual será o resultado das expressões abaixo? Tente deduzir e depois confira no interpretador.
   - a) `[x^2+1 | x <- [0..4]]`
   - b) `[x+1 | x <- [5..1]]`
   - c) `[(x,x^2) | x <- take 5 [2,4..]]`
   - d) `[y | (x,y) <- [(0,6.7), (1,5.6)]]`
    

2. As expressões abaixo são um pouco mais complicadas. Tente deduzir o que elas expressam e depois confira o resultado no interpretador. Consulte o Dr. Google sobre as funções Haskell que você não conhece ainda.

    - a) `length [color | (_,_,color) <- [(0,1,"red"),(1,2,"green"), (8,4,"red")], color == "red"]`
    - b) `[ a ++ b | a <- ["lazy","big"], b <- ["frog", "dog"]]`
    - c) `[ (x,y) | x <- [1..5], even x, y <- [(x + 1)..6], odd y ]`
    - d) `concat [ if elem x "aeiou" then [x,'-'] else [x] | x <- "paralelepipedo"]`
   

## Exercícios de Programação :computer:

No seu projeto no Repl.it, crie um arquivo **exatamente** com este nome: `haskell03.hs`. Entregue todos os exercícios abaixo nesse arquivo.

1. Usando *list comprehension*, defina uma função `add10toall :: [Int] -> [Int]`, que receba uma lista e adicione o valor 10 a cada elemento dessa lista, produzindo outra lista. Exemplo:

   ```
   > add10toall [0,1,2]
   [10,11,12]
   ```

2. Usando *list comprehension*, defina uma função `multN :: Int -> [Int] -> [Int]`, que receba um número `N` e uma lista, e multiplique cada elemento da lista por `N`, produzindo outra lista.

3. Usando a função de alta ordem `map`, defina a função `multN' :: Int -> [Int] -> [Int]`, equivalente à função do exercício anterior.

4. Usando *list comprehension*, defina uma função `applyExpr :: [Int] -> [Int]`, que receba uma lista e calcule `3*x+2` para cada elemento `x` da lista, produzindo outra lista.

5. Reescreva a função do exercício anterior usando lambda e uma função de alta ordem. A assinatura da função será `applyExpr' :: [Int] -> [Int]`.


6. Usando *list comprehension*, escreva uma função `addSuffix :: String -> [String] -> [String]` , para adicionar um dado sufixo às strings contidas numa lista. Exemplo: 

   ```
   > addSuffix "@inf.ufsm.br" ["fulano","beltrano"]
   ["fulano@inf.ufsm.br","beltrano@inf.ufsm.br]
   ```

7. Usando *list comprehension*, defina uma função `selectgt5 :: [Int] -> [Int]`, que receba uma lista e selecione somente os valores maiores que 5, produzindo outra lista.

8. Usando *list comprehension*, defina uma função `sumOdds :: [Int] -> Int`, que receba uma lista e obtenha o somatório dos valores ímpares, produzindo outra lista. Para auxiliar nesta função, você deverá pesquisar funções pré-definidas em Haskell.

9. Resolva a questão anterior sem usar *list comprehension*, criando a função `sumOdds' :: [Int] -> Int`.

10. Usando *list comprehension*, defina uma função `selectExpr :: [Int] -> [Int]`, que receba uma lista e selecione somente os **valores pares entre 20 e 50, inclusive**, produzindo outra lista.

11. Escreva uma função `countShorts :: [String] -> Int`, que receba uma lista de palavras e retorne a quantidade de palavras dessa lista que possuem menos de 5 caracteres. Use *list comprehension*.


12. Escreva uma função `calcExpr :: [Float] -> [Float]`, que calcule `x^2/2` para cada elemento `x` da lista de entrada e selecione apenas os resultados que forem maiores que 10. Use *list comprehension*.

13. Escreva uma função `trSpaces :: String -> String`, que receba uma string e converta espaços (' ') em traços ('-'). Use *list comprehension*.


14. Usando *list comprehension*, Defina uma função `selectSnd :: [(Int,Int)] -> [Int]`, que receba uma lista de [tuplas](http://learnyouahaskell.com/starting-out#tuples) e selecione somente os segundos elementos dessas tuplas, produzindo outra lista. Exemplo: 

    ```
    > selectSnd [(0,1),(3,4)]
    [1,4]
    ```

15. Em Haskell, a função `zip` combina elementos de duas listas, produzindo uma lista de tuplas. Por exemplo:

    ```
    > zip [1,2] "ab"
    [(1,'a'),(2,'b')]
    > zip [1..] "abcde"
    [(1,'a'),(2,'b'),(3,'c'),(4,'d'),(5,'e')]
    ```
   
    Usando a função `zip` com *list comprehension* e outras funções auxiliares, escreva uma função `dotProd :: [Int] -> [Int] -> Int` que calcule o somatório dos produtos dos pares de elementos de duas listas, conforme o exemplo:

    ```
    > dotProd [1,1,1,1] [2,2,2,2] -- 1*2 + 1*2 + 1*2 + 1*2
    8
    ```



## Para saber mais sobre Haskell :mag:

Consulte as seções abaixo no livro [Learn you a Haskell for Great Good!](http://learnyouahaskell.com), de Miran Lipovača:
- [Funções de alta ordem (map, filter, etc.)](http://learnyouahaskell.com/higher-order-functions)
- [Funções anônimas](http://learnyouahaskell.com/higher-order-functions#lambdas)
- [List comprehension](http://learnyouahaskell.com/starting-out#im-a-list-comprehension)
- [Tuplas](http://learnyouahaskell.com/starting-out#tuples) 

