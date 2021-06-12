# Prática: Programação funcional em Haskell


## Objetivos :dart:


Esta prática adicional serve de revisão do que estudamos sobre programação funcional em Haskell.
Você vai trabalhar com alguns códigos fornecidos para exercitar a compreensão de código e também vai criar novas funções em Haskell. 

Continuaremos usando como "case" a geração de SVG em Haskell, mas desta vez vamos gerar figuras inspiradas em **códigos de barra**. 

## Sobre SVG e Programação Funcional

Produzir documentos SVG tem vantagens para iniciação à programação funcional em Haskell: 
 - podemos criar imagens com poucas linhas de código e sem precisar instalar módulos adicionais no GHC
 - a criação de uma imagem pode ser decomposta em várias funções, algumas bem simples e outras mais complexas
 - trabalhar com coordenadas e cores em SVG requer apenas tipos básicos de Haskell, que podem ser combinados em tuplas e listas
 - SVG é um formato simples, muito usado e bem documentado em muitos tutoriais, por exemplo este: https://www.w3schools.com/graphics/svg_intro.asp (veja no menu deste site a documentação sobre cada elemento que pode ser incluído num documento SVG).
 

## Pré-Requisitos 

Esta prática supõe que você já tenha feito as práticas anteriores. 


## Repositório :envelope_with_arrow:


Clique aqui para criar seu repositório para esta prática de Haskell: https://classroom.github.com/a/AM4Isv1R
Neste repositório você encontrará os arquivos para a prática.

**Atenção**: Esta prática não é obrigatória e não será contabilizada para fins de avaliação. É recomendada para quem fez todas as práticas anteriores e já está com o trabalho bem encaminhado.


## Aquecimento


1. No editor, abra o programa `simplebarcode.hs`, que está no repositório desta prática. Veja que ele contém poucas funções e muitos comentários. Localize a função `main`, que vai aplicar as demais funções e gerar uma imagem SVG representando cada bit da string como uma barra (linha SVG).

2. Como nas outras práticas, abra o programa no Shell (terminal com interpretador de comandos) digitando:
   ```
   ghci simplebarcode.hs
   ```
   ou abrindo antes o GHCi e depois:
   ```
   Prelude> :l simplebarcode.hs
   ```
3. Execute a função `main` e veja as strings produzidas pelo programa.

4. Antes de visualizar a imagem, vamos exercitar outra forma de executar o programa Haskell, sem abrir o GHCi. Então saia do GHCi e digite no Shell:
   ```
   runhaskell simplebarcode.hs
   ```
   Este comando vai chamar a função `main` e você verá as strings SVG na saída.
   
5. Para gerar a imagem em um arquivo, vamos direcionar a saída padrão para um arquivo SVG:
   ```
   runhaskell simplebarcode.hs > bars.svg
   ```
   Observe que o arquivo `bars.svg` deve ter sido criado na mesma pasta onde está o programa. Abra o arquivo em um visualizador de imagens e você verá as barras azuis e pretas geradas.
   
6. Altere a string `bits`, removendo e trocando o valor de alguns bits. Veja que as barras desenhadas se ajustam (aproximadamente) ao tamanho da imagem, variando a inclinação conforme a quantidade de bits.


## Programação :computer:


Você agora vai modificar o programa `simplebarcode.hs`, acrescentando algumas funções e alterando algumas partes do código.

1. Defina uma função `isBin :: String -> Bool` que verifique se a string recebida como argumento contém apenas caracteres '0' ou '1'. A função retornará False se houver qualquer outro caracter.


2. Defina uma função `bitPos :: String -> [(Char,Int)]` que, dada uma lista de caracteres, retorne cada caracter numa tupla numerada de 0 em diante. Exemplo de uso:
   ```
   > bitPos "010101"
   [('0',0),('1',1),('0',2),('1',3),('0',4),('1',5)]
   ```

3. Usando *list comprehension*, defina uma função `altBarList :: String -> Int -> [((Int,Int),(Int,Int))]` que receba uma string com caracteres '0' ou '1' e um valor para o `gap`. Essa função deverá chamar as funções `bar` ou `flipbar`, respectivamente para um caracter '0' ou '1'. O resultado da função será uma lista com coordenadas de barras, considerando a posição de cada bit na string (a função `bitPos` será útil aqui). Exemplo de uso: 
   ```
   > altBarList "0101" 2
   [((0,0),(2,100)),((4,0),(2,100)),((4,0),(6,100)),((8,0),(6,100))]
   ```

4. Altere a função `svgBars` para chamar `altBarList` na definição de `bars` dentro do `let`. Se tudo der certo, agora a imagem produzida terá barras diferentes conforme o bit representado for '0' ou '1'.


5. Qual será o número representado pela string de bits no programa? Resolva este mistério criando a função `binToDec :: String -> Int`, que deve converter a string representando o número binário em seu equivalente em decimal. Você lembra como fazer a conversão? Multiplicamos o dígito mais à direita por 2^0, o anterior por 2^1 e assim por diante, para depois calcularmos o somatório desses produtos. Use `digitToInt` do módulo `Data.Char` para converter um caracter de 0 a 9 em inteiro.

## Outro exemplo

Para quem tiver curiosidade de ver um gerador de código de barra "real" em Haskell, este repositório também contém o programa `ean13barcode.hs`. Este programa trabalha com as especificações de códigos de barra no padrão EAN-13, muito usado na indústria e comércio para identificar produtos em geral. 

O código em `ean13barcode.hs` usa recursos básicos de Haskell que vimos na disciplina. A dificuldade maior está em entender a codificação EAN-13, que tem alguns elementos fixos e outros variáveis (isso explica alguns valores hard-coded no programa).

Para executar o programa e gerar o código de barras para um produto especificado no código, execute no Shell:
```
runhaskell ean13barcode.hs > ean.svg
```

Se você quiser testar a geração do código de barras para outro número, procure em sua casa por algum produto que siga este padrão. Substitua o valor de `code` na função `main` com os 13 dígitos do produto que você escolheu. Para ver se o código de barras foi gerado corretamente, use um leitor de código de barras no seu smartphone.



Para saber mais sobre a codificação EAN-13, veja um resumo [aqui](https://en.wikipedia.org/wiki/International_Article_Number).

