# Prática: Programação funcional em Haskell

## Objetivos :dart:


Nesta aula, vamos trabalhar com funções pré-definidas e também com funções que você vai definir. Você vai começar a se acostumar com a sintaxe da linguagem Haskell para definir funções tipadas. 

## Pré-Requisitos 

Antes desta prática, veja uma introdução a funções em linguagem Haskell (<a href="https://drive.google.com/file/d/1bNJzVGHOQJV9Tb5IoY1Ks5zpmCigIu30/view?usp=sharing">vídeo</a> | <a href="https://docs.google.com/presentation/d/1OlYRsSYKEnajy7ZhBVh-H6H-HcJkLodAlRgIGf7N55E/edit?usp=sharing">slides</a>).

## Repositório de Entrega :envelope_with_arrow:

Todos os seus exercícios de Haskell serão entregues no GitHub, portanto você precisa ter uma conta lá. 

Usaremos sempre o GitHub Classroom, que cria repositórios privados automaticamente, associados a uma lista de estudantes da turma.

Para criar o seu repositório para esta prática de Haskell, você vai clicar no link mais abaixo. 
O repositório estará acessível na sua lista de repositórios no GitHub e você poderá gerenciá-lo pela interface Web, pelo seu IDE ou por outros clientes Git. Os arquivos dentro do repositório deverão ser mantidos com **nomes padronizados** seguindo **exatamente** as instruções do roteiro de exercícios.

Então vamos lá, clique aqui para criar seu repositório desta prática de Haskell: https://classroom.github.com/a/JYtMyvj7


## Repl.it

Vamos usar o GHC disponível no Repl.it. Para isso, você vai ter que se cadastrar no Repl.it, usando sua conta no GitHub. 

Depois de fazer seu cadastro, clique em `+ New repl` para criar um novo projeto no Repl.it e escolha a opção `Import from GitHub`. Selecione o repositório criado automaticamente quando você clicou no link do repositório de entrega. Se der tudo certo, você deverá ver uma lista de arquivos à esquerda, incluindo o arquivo `haskell01quickstart.hs` e outros que usaremos nesta prática.


## Primeiros passos :baby_symbol:

Estes exercícios são apenas para ambientação com a linguagem. Não precisam ser entregues.


- Abra o programa `haskell01quickstart.hs`. Este programa tem vários exemplos da sintaxe de Haskell que possuem equivalentes em C. Será que você consegue entendê-los? (se ligue nos comentários!)

   ```haskell
   -- Eleva um numero ao quadrado
   -- Aqui temos um comentario!
   square :: Int -> Int
   square x = x^2

   -- Verifica se um numero eh par 
   -- Ilustra uso de if/then/else para expressar condicional 
   -- A funcao 'mod' retorna o resto da divisao inteira
   -- A função seguinte apresenta uma versão melhorada
   isEven :: Int -> Bool
   isEven n = if mod n 2 == 0 then True else False

   -- Versão melhorada da função anterior
   -- A comparação == resulta True/False, por isso
   -- o if-then-else é desnecessário neste caso
   isEvenBetter  :: Int -> Bool
   isEvenBetter n = mod n 2 == 0

   -- Gera um numero a partir de um caracter 
   -- Note esta estrutura condicional em Haskell, usando'guardas' (|)
   encodeMe :: Char -> Int
   encodeMe c 
      | c == 'S'  = 0
      | c == 'N'  = 1
      | otherwise = undefined

   -- Calcula o quadrado do primeiro elemento da lista
   -- Note que '[Int]' designa uma lista de elementos do tipo Int 
   squareFirst :: [Int] -> Int
   squareFirst lis = (head lis)^2

   -- Verifica se uma palavra tem mais de 10 caracteres
   isLongWord :: String -> Bool -- isso é o mesmo que: isLongWord :: [Char] -> Bool
   isLongWord s = length s > 10
   ```

- Para explorar melhor este código, abra o Shell no Repl.it (não a Console) e execute o comando `ghci haskell01quickstart.hs` para abrir o programa no ambiente GHC interativo, conforme mostrado no vídeo. Neste ambiente interativo, teste as funções em cada um dos casos abaixo. 

   ```haskell
   square 2 + 1
   square (2+1)
   isEven 8
   isEven 9
   encodeMe 'S'
   squareFirst [-3,4,5]
   isLongWord "test"
   ```

3. Agora teste as aplicações de funções abaixo. Elas vão gerar **erros** :stop_sign:. Deduza o motivo em cada caso.

   ```haskell
   sQUARE 2
   square 'A'
   isEven 8.1
   encodeMe "A"
   squareFirst []
   isLongWord 'test'
   ```

## Exercícios de Programação :computer:


Nos exercícios abaixo, você vai definir funções tipadas. Para saber mais sobre a sintaxe de funções tipadas, veja nos [slides](https://docs.google.com/presentation/d/1y-4QgUU2PrwF-OnersZDP2B4qCQAz14kCMJ3SrU7rKo/edit?usp=sharing). 

### Parte 1 - Definindo novas funções


Esta parte deverá ser feita no arquivo nomeado `haskell01parte1.hs`. No seu projeto no Repl.it, você já encontrará um arquivo com este nome. Basta preenchê-lo.

1. Crie uma função `sumSquares :: Int -> Int -> Int` que receba dois números x e y e calcule a soma dos seus quadrados.

2. Defina a função `circleArea :: Float -> Float` que receba um raio r e calcule a área de um círculo com esse raio, dada por pi vezes o raio ao quadrado. Dica: Haskell tem a função `pi` pré-definida.

3. Defina uma função `age :: Int -> Int -> Int` que receba o ano de nascimento de uma pessoa e o ano atual, produzindo como resultado a idade (aproximada) da pessoa.

4. Defina uma função `isElderly :: Int -> Bool` que receba uma idade e resulte verdadeiro caso a idade seja maior que 65 anos.


5. Defina uma função `htmlItem :: String -> String` que receba uma `String` e adicione tags `<li>` e `<\li>` como prefixo e sufixo, respectivamente. Por exemplo, se a entrada for `"abc"`, a saída será `"<li>abc<\li>"`. Use o operador `++` para concatenar strings (este operador serve para concatenar quaisquer lista do mesmo tipo).

7. Crie uma função `startsWithA :: String -> Bool` que receba uma string e verifique se ela inicia com o caracter `'A'`.

8. Defina uma função `isVerb :: String -> Bool` que receba uma string e verifique se ela termina com o caracter `'r'`. Antes desse exercício, teste no interpretador a função pré-definida `last`, que retorna o último elemento de uma lista. Dica: conheça também o [list monster](http://s3.amazonaws.com/lyah/listmonster.png), do autor Miran Lipovača :-)

9. Crie uma função `isVowel :: Char -> Bool` que receba um caracter e verifique se ele é uma vogal minúscula.

10. Crie uma função `hasEqHeads :: [Int] -> [Int] -> Bool` que verifique se 2 listas possuem o mesmo primeiro elemento. Use a função `head` e o operador lógico `==` para verificar igualdade.

11. A função pré-definida `elem` recebe um elemento e uma lista, e verifica se o elemento está presente ou não na lista. Teste essa função no interpretador: 
    ```haskell
    elem 3 [1,2,3]
    elem 4 [1,2,3]
    elem 'c' "abcd"
    elem 'A' "abcd"
    ```

    Agora use a função `elem` para criar uma função `isVowel2 :: Char -> Bool` que verifique se um caracter é uma vogal, tanto maiúscula como minúscula.

### Parte 2 - Começando a usar funções de alta ordem

Esta parte deverá ser feita no arquivo nomeado `haskell01parte2.hs`. No seu projeto no Repl.it, você já encontrará um arquivo com este nome. Basta preenchê-lo.

Para fazer os exercícios abaixo, você vai usar as **funções de alta ordem** `map` e `filter`. Estas funções foram descritas na introdução a funções em linguagem Haskell (<a href="https://drive.google.com/file/d/1bNJzVGHOQJV9Tb5IoY1Ks5zpmCigIu30/view?usp=sharing">vídeo</a> | <a href="https://docs.google.com/presentation/d/1OlYRsSYKEnajy7ZhBVh-H6H-HcJkLodAlRgIGf7N55E/edit?usp=sharing">slides</a>).


Muitos desses exercícios também vão usar funções que você definiu na parte anterior desta prática (procure lembrar delas!). Sempre que possível, reuse funções já definidas. Quando não houver uma função já definida, você deverá criá-la.


1. Crie uma função `itemize :: [String] -> [String]` que receba uma lista de nomes e aplique a função `htmlItem` em cada nome.

2. Crie uma função `onlyVowels :: String -> String` que receba uma string e retorne outra contendo somente suas vogais. Por exemplo: `onlyVowels "abracadabra"` vai retornar `"aaaaa"`.

3. Escreva uma função `onlyElderly :: [Int] -> [Int]` que, dada uma lista de idades, selecione somente as que forem maiores que 65 anos.

5. Crie uma função `onlyLongWords :: [String] -> [String]` que receba uma lista de strings e retorne somente as strings longas (use a função `isLongWord` definida no código de exemplo no início da prática).

6. Escreva uma função `onlyEven` que receba uma lista de números inteiros e retorne somente aqueles que forem pares. Agora é com você a definição da tipagem da função!

7. Escreva uma função `onlyBetween60and80` que receba uma lista de números e retorne somente os que estiverem entre 60 e 80, inclusive. Você deverá criar uma função auxiliar `between60and80` e usar `&&` para expressar o operador "E" lógico em Haskell.

8. Crie uma função `countSpaces` que receba uma string e retorne o número de espaços nela contidos. Dica 1: você vai precisar de uma função que identifica espaços. Dica 2: aplique funções consecutivamente, isto é, use o resultado de uma função como argumento para outra. 

9. Escreva uma função `calcAreas` que, dada uma lista de valores de raios de círculos, retorne uma lista com a área correspondente a cada raio.

10. Neste exercício, você vai criar uma função equivalente a `elem`, mas usando uma função de alta ordem. Crie a função `charFound :: Char -> String -> Bool` que verifique se o caracter (primeiro argumento) está contido na string (segundo argumento). Exemplos de uso da função:
    ```
    > charFound 'a' ""  
    False  
    > charFound 'a' "uau"  
    True  
    ```

### Parte 3 - Explorando um programa 

Nesta parte, vamos trabalhar com um programa em Haskell que gera uma imagem em formato SVG, com 2 círculos (veja a sintaxe para definir um [círculo em SVG](https://www.w3schools.com/graphics/svg_circle.asp)). 
Você vai modificar um código fornecido para gerar uma imagem diferente.

1. Dentro da pasta `haskell01parte3`, abra o programa `svgSimple.hs`.

2. Execute o programa abrindo-o no GHCi e veja que ele cria um arquivo `circles.svg`. Clique neste arquivo para ver a figura gerada.

3. Analise o código do programa e identifique os recursos de Haskell que você já conhece e as novidades que apareceram. 

4. Identifique as linhas de código que criam círculos com diferentes características.

5. Modifique o código para gerar uma imagem diferente, com vários círculos com outras características.

6. Este exercício vai ser entregue na pasta nomeada `haskell01parte3`. Dentro da pasta, entregue o arquivo `svgSimple.hs` modificado e a figura `circle.svg` gerada. 


## Entrega no GitHub :octocat:

Se tudo deu certo na importação para o Repl.it do seu repositório GitHub desta prática, basta você usar a interface do Repl.it no menu de controle de versão para fazer commit e push para o GitHub.

Para conferir se isso funcionou, abra a interface web do GitHub e procure seu repositório. Os arquivos editados no Repl.it devem estar lá se o push deu certo.

É bem normal que dê algo errado da primeira vez, então peça ajuda e não tenha medo de recomeçar tudo de novo. Para evitar perder os exercícios feitos enquanto você não tem segurança no uso das ferramentas, salve os arquivos localmente no seu computador. 



## Para saber mais sobre Haskell :mag:

Consulte as seções abaixo no livro [Learn you a Haskell for Great Good!](http://learnyouahaskell.com), de Miran Lipovača:
- [Funções de alta ordem (map, filter, etc.)](http://learnyouahaskell.com/higher-order-functions) 
- [Funções anônimas](http://learnyouahaskell.com/higher-order-functions#lambdas): vamos usá-las mais adiante
