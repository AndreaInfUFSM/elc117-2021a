# Prática: Programação funcional em Haskell


## Objetivos :dart:


Nesta aula, vamos trabalhar com funções de alta ordem e com funções anônimas, que são recursos típicos da programação funcional. 

## Pré-Requisitos 

Antes desta prática, veja o material sobre **funções de alta ordem** ([slides](https://docs.google.com/presentation/d/1BClOOK2cHGd0Q3pXmTd8x5hgXq-hSsxXy1-B_Z3vl8w/edit?usp=sharing) | [vídeo](https://drive.google.com/file/d/1a3Ag7C7jNRaaaK2gp8DM8MYbTAMoWxd-/view?usp=sharing)) e **funções anônimas (lambda)** 
([slides](https://docs.google.com/presentation/d/127bdelIdlXGHR8tgfBUyL8sadVLEK0aB_wVCMkVhlTs/edit?usp=sharing) | [vídeo](https://drive.google.com/file/d/1VSYOahhtMg0w-PlBwNv--ePezgpGOYoU/view?usp=sharing)).


## Repositório de Entrega :envelope_with_arrow:

Você vai continuar entregando seus exercícios no GitHub, como na primeira prática, só em outro repositório.

Clique aqui para criar seu repositório desta prática de Haskell: https://classroom.github.com/a/TL4JscEI

Lembre sempre de fazer **commit e push** para que seus exercícios sejam enviados para o GitHub.


## Repl.it

Vamos usar o GHC disponível no Repl.it. Para isso, você vai ter que se cadastrar no Repl.it, usando sua conta no GitHub. 

Depois de fazer seu cadastro, clique em `+ New repl` para criar um novo projeto no Repl.it e escolha a opção `Import from GitHub`. Selecione o repositório criado automaticamente quando você clicou no link do repositório de entrega. Se der tudo certo, você deverá ver uma lista de arquivos à esquerda.


## Relembrando o ambiente de execução


- Para estes exercícios, você vai continuar usando o ambiente GHC, que inclui um compilador e um interpretador para Haskell. No Repl.it, este ambiente está acessível no `Shell`. Para abrir o interpretador no modo interativo, digite `ghci` no Shell.

- Usar o interpretador no modo **interativo** é uma boa opção para testar/prototipar funções. Basta escrever chamadas de funções na linha de comando do interpretador, que ele vai executá-las e mostrar o resultado. 

- Para além do teste de funções, nossos códigos Haskell sempre ficarão em arquivos, por exemplo `haskell02warmup.hs`.

- Para **executar** um programa, ele precisa ser **carregado** no GHCi. A forma de fazer isso depende bastante do IDE que você está usando. No Repl.it, seguiremos usando o Shell, então carregaremos um programa digitando, por exemplo, `ghci haskell02warmup.hs`.

- No Repl.it, se você alterar o arquivo `.hs`, você precisará carregá-lo novamente no GHCi. 

- Alguns comandos úteis:
  - Para carregar um programa depois de abrir o GHCi: `Prelude> :load main.hs` ou `Prelude> :l main.hs`.
  - Para sair do interpretador: `Prelude> :q` ou `Ctrl-D`.
  - Setas Up e Down ajudam a acessar o histórico de comandos para não ter que redigitá-los.


## Aquecimento


Estes exercícios não precisam ser entregues. São apenas um aquecimento.

1. Copie as funções abaixo para um arquivo de programa Haskell (.hs) ou abra [este programa no Repl.it](https://repl.it/@AndreaSchwertne/haskell02). 

   ```haskell  
   square :: Int -> Int
   square x = x^2
  
   squareAll :: [Int] -> [Int]
   squareAll lis = map square lis 
   
   useHaskell :: String -> String
   useHaskell fulano = fulano ++ ", use Haskell!"
   
   sejamFelizes :: [String] -> [String]
   sejamFelizes pessoas = map useHaskell pessoas
   
   doutor :: String -> Bool
   doutor nome = (take 2 nome) == "Dr"
   
   adulto :: Int -> Bool
   adulto idade = idade >= 18
   ```

2. Qual será o resultado das aplicações de funções abaixo? Confira no interpretador.

   ```haskell  
   squareAll [1,2,3]
   filter (>10) (squareAll [2, 3, 4])
   filter (\x -> square x > 10 && square x < 30) [1, 2, 3, 4, 5, 6]
   sejamFelizes ["Harry", "Hermione"]
   filter adulto [4, 10, 18, 24, 9]
   filter doutor ["Mr. Hyde", "Dr. Jekyll", "Dr. Octopus"]
   map (\s -> s ++ ", use Haskell!") (filter doutor ["Mr. Hyde", "Dr. Jekyll"])
   ```
   
3. Abaixo temos operações com listas de tuplas em Haskell. Tuplas agrupam dados que podem ser de diferentes tipos, em um único "registro". É algo um pouco semelhante a `struct` em C. Nos exemplos abaixo, temos 2 tuplas de tipo `(String, Int)`. Uma lista com estas tuplas tem tipo `[(String,Int)]`. Você consegue deduzir o resultado de cada linha abaixo? 
   ```haskell  
   filter (\(_,idade) -> idade > 60) [("Fulano", 32),("Beltrano", 64)] -- aqui temos 2 tuplas (String,Int)
   sejamFelizes (map (\(nome,_) -> nome) [("Fulano", 32),("Beltrano", 64)]) 
   ```

## Exercícios de Programação :computer:

Entregue estes exercícios no arquivo `haskell02.hs`. No seu projeto no Repl.it, você já encontrará um arquivo com este nome. Basta preenchê-lo.


1. Médicos consideram que um indivíduo tem febre quando sua [temperatura corpórea está acima de 37,8oC](https://drauziovarella.uol.com.br/doencas-e-sintomas/febre/). Escreva uma função `comFebre :: [Float] -> [Float]` que, dada uma lista de temperaturas de indivíduos, selecione aquelas que representam febre. Resolva esta questão definindo uma função auxiliar nomeada, que verifica se uma dada temperatura é febre ou não.

2. Escreva uma função `comFebre' :: [Float] -> [Float]` que resolva a questão anterior usando lambda.

3. Crie uma função `itemize :: [String] -> [String]` que receba uma lista de strings e adicione tags HTML `<li>` e `</ li>` antes e depois de cada string. Resolva esta questão usando lambda.

4. Escreva uma função `bigCircles :: Float -> [Int] -> [Float]` que receba um número e uma lista de raios de círculos. Essa função deverá retornar somente aqueles raios de círculos cuja área seja maior que o número passado como argumento.

5. Escreva uma função `quarentena :: [(String,Float)] -> [(String,Float)]` que receba uma lista de tuplas com nomes de pessoas e suas temperaturas corpóreas, e selecione aquelas que têm febre.

6. Escreva uma função `idadesEm :: [Int] -> Int -> [Int]` que receba uma lista de anos de nascimento de algumas pessoas e um ano de referência. A lista resultante terá idades calculadas considerando o ano de referência (idades aproximadas, já que só consideram o ano, não a data completa de nascimento). Resolva esta questão usando lambda.

7. Escreva uma função `changeNames :: [String] -> [String]` que receba uma lista de nomes e adicione o sufixo "Super " às strings que começarem com a letra `A` (maiúscula), deixando as demais inalteradas. A lista resultante, portanto, terá a mesma quantidade de strings da lista original.

8. Escreva uma função `onlyShorts :: [String] -> [String]` que receba uma lista de strings e retorne outra lista contendo somente as strings cujo tamanho seja menor que 5.



## Para saber mais sobre Haskell :mag:

Consulte as seções abaixo no livro [Learn you a Haskell for Great Good!](http://learnyouahaskell.com), de Miran Lipovača:
- [Funções de alta ordem (map, filter, etc.)](http://learnyouahaskell.com/higher-order-functions) 
- [Funções anônimas](http://learnyouahaskell.com/higher-order-functions#lambdas)
- [Tuplas](http://learnyouahaskell.com/starting-out) (procure por Tuples)

