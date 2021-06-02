# Prática: Programação funcional em Haskell


## Objetivos :dart:


Nesta aula, vamos continuar exercitando programação funcional em Haskell.


## Pré-Requisitos 

Esta prática supõe que você já tenha feito as práticas anteriores e tenha consultado os slides/vídeos sobre Haskell disponibilizados na página da disciplina no GitHub.

Vamos continuar usando o GHC disponível no Repl.it, ligado ao GitHub. Quem preferir pode instalar o GHC e o Git localmente e trabalhar em seu IDE favorito.


## Repositório de Entrega :envelope_with_arrow:


Clique aqui para criar seu repositório desta prática de Haskell: https://classroom.github.com/a/X3IuYZEB

Lembre sempre de fazer **commit e push** para que seus exercícios sejam enviados para o GitHub.





## Aquecimento


Estes exercícios não precisam ser entregues. São apenas um aquecimento.


Qual será o resultado das expressões abaixo? Tente deduzir e depois confira no interpretador. Pesquise sobre os recursos que você não conhece e teste-os no interpretador com outras entradas.

   - `[1,2,3] ++ [4]`
   - `take 5 [10,20..]`
   - `drop 4 "Dr. Jekyll"`
   - `take 10 (repeat 'A')`
   - `let string = "abracadabra" in take (div (length string) 2) string`
   - `let string = "rectangles" in drop 4 string`
   - `take 10 (iterate (2+) 2)`
   - `take 10 (iterate (2*) 2)`
   - `take 5 (iterate (\x -> (x+3)*2) 1)`
   

## Exercícios de Programação :computer:


### Parte 1

Entregue todos os exercícios abaixo no arquivo `haskell04.hs`, que já está criado no repositório de entrega no GitHub.


1. A vacinação contra COVID19 no Brasil está acontecendo por grupos prioritários. As equipes responsáveis pelas ações de vacinação devem registrar em um sistema cada dose de vacina aplicada, classificando cada indivíduo em um dos grupos previstos. No caso de idosos, este grupo prioritário é organizado em 5 faixas etárias: de 60 a 64 anos, de 65 a 69 anos. de 70 a 74 anos, de 75 a 79 anos e de 80 anos ou mais. No sistema, essas faixas são identificadas, respectivamente, pelas siglas "IDO64", "IDO69", "IDO74", "IDO79" e "IDO80". Sabendo disso, crie uma função `faixaIdoso :: Int -> String` que receba uma idade e retorne o código da faixa correspondente. Caso a idade não se enquadre em nenhuma das faixas do grupo prioritário, o código será "ND" (não definido).


2. Usando *list comprehension*, crie uma função `classifIdosos :: [(String,Int)] -> [(String,Int,String)]` que receba uma lista de tuplas contendo nome e idade, e retorne uma lista de tuplas com nome, idade e o código da faixa correspondente (faixaIdoso). Por exemplo:
   ```
   > classifIdosos [("joao",65), ("maria", 64)]
   [("joao",65,"IDO69"),("maria",64,"IDO64")]
   ```   

3. Resolva o exercício anterior com função de alta ordem, sem usar list comprehension. O novo nome da função será `classifIdosos'`.


4. Suponha que uma cor seja representada por uma tupla `(Int,Int,Int)`, contendo valores (R=red,G=Green,B=blue). Considerando isso, crie uma função `strColor :: (Int,Int,Int) -> String` que receba uma tupla representando uma cor (R=red,G=Green,B=blue) e retorne uma string no formato "rgb(R,G,B)". Por exemplo:
   ```
   > strColor (90,0,35)
   "rgb(90,0,35)"
   ```


5. Suponha que um círculo seja representado por uma tupla `(Int,Int,Int)`, contendo respectivamente as coordenadas x e y de seu centro, seguidas de seu raio. Considerando isso, crie uma função `genCircs :: Int -> (Int,Int) -> Int -> [(Int,Int,Int)]` que receba um número N, um ponto (cx,cy) e um raio R, e gere uma sequência de N círculos de raio R alinhados horizontalmente com um primeiro círculo centrado em (cx,cy). Você pode decidir qual será a distância entre eles. Por exemplo:
   ```
   > genCircs 5 (10,10) 2
   [(10,10,2),(14,10,2),(18,10,2),(22,10,2),(26,10,2)]
   ```

6. Suponha novamente que uma cor seja representada por uma tupla `(Int,Int,Int)`, contendo valores (R=red,G=Green,B=blue). Sabendo disso, crie uma função `genReds :: Int -> [(Int,Int.Int)] ` que receba um número N e gere uma lista com N tons de vermelho calculados (não enumere cada um dos valores literalmente com números "hard-coded"). Você pode repetir valores, se desejar. Abaixo está um exemplo de uso dessa função:
   ```
   > genReds 5
   [(80,0,0),(90,0,0),(100,0,0),(110,0,0),(120,0,0),(130,0,0)]
   ```

### Parte 2

Nesta parte, você vai trabalhar com o arquivo `svgPatterns.hs`, que contém algumas funções para gerar uma imagem SVG com retângulos.

Para gerar uma imagem, carregue o programa no GHCi e execute a função `main`. Isso vai gerar um arquivo `rects.svg`.

Modifique o programa `svgPatterns.hs` para gerar uma imagem diferente, acrescentando e alterando funções. Você pode alterar cores, formas, posições, quantidades, etc. A nova imagem deve se chamar `figs.svg`

Entregue o programa modificado e um exemplo de arquivo `figs.svg` gerado.





## Para saber mais sobre Haskell :mag:

Consulte as seções abaixo no livro [Learn you a Haskell for Great Good!](http://learnyouahaskell.com), de Miran Lipovača:
- [Funções de alta ordem (map, filter, etc.)](http://learnyouahaskell.com/higher-order-functions)
- [Funções anônimas](http://learnyouahaskell.com/higher-order-functions#lambdas)
- [List comprehension](http://learnyouahaskell.com/starting-out#im-a-list-comprehension)
- [Tuplas](http://learnyouahaskell.com/starting-out#tuples) 

