# Prática: Programação funcional em Haskell


## Objetivos :dart:


Nesta aula, vamos continuar exercitando programação funcional em Haskell. Em especial, vamos praticar um pouco o uso de let..in e where.


## Pré-Requisitos 

Esta prática supõe que você já tenha feito as práticas anteriores. Também requer que você tenha consultado o material sobre let..in e where   (<a href="https://docs.google.com/presentation/d/19RYxn-5027UPJQ-kEYTXmbC84NSXGx0e2vwnNmH64Lc/edit?usp=sharing">slides</a> | <a href="https://drive.google.com/file/d/1848dskEKgEWX9_GG_RAs2cYI4CAb2iNX/view?usp=sharing">vídeo</a>).


Vamos continuar usando o GHC disponível no Repl.it, ligado ao GitHub. Quem preferir pode instalar o GHC e o Git localmente e trabalhar em seu IDE favorito.


## Repositório de Entrega :envelope_with_arrow:


Clique aqui para criar seu repositório desta prática de Haskell: https://classroom.github.com/a/jVA0qEPt

Lembre sempre de fazer **commit e push** para que seus exercícios sejam enviados para o GitHub.




## Exercícios de Programação :computer:



Entregue os exercícios abaix no arquivo `haskell05.hs`. Você deverá criar este arquivo no repositório de entrega.


1. O Índice de Massa Corporal (IMC) é dado pelo peso dividido pela altura ao quadrado. Dependendo do valor resultante, um indivído adulto pode ser considerado abaixo do peso ideal (menor ou igual a 18.5), acima do peso ideal (maior ou igual a 30) ou dentro do peso normal (faixa intermediária). Sabendo disso, crie uma função `bmi :: Float -> Float -> String` que receba peso e altura e retorne um destes valores: "ABAIXO", "NORMAL" ou "ACIMA", dependendo do IMC calculado. Use `let..in` para declarar o cálculo do valor do IMC e aproveitá-lo em cada condição testada.

2. Resolva o exercício anterior usando `where`. A assinatura da nova função será `bmi' :: Float -> Float -> String`.


3. O exemplo de validação de CPF mostrado nos slides/vídeo tem 3 funções: uma que faz I/O e outras 2 que tratam do cálculo do dígito verificador. A função `cpfValid` usa `let..in` e a função `cpfDV` usa `where`. Reescreva estas 2 funções, trocando `let..in` por `where` e vice-versa.

4. Crie uma função `andTable :: [(Bool, Bool, Bool)]` que gere uma tabela verdade para o operador **AND** lógico, com o seguinte resultado: 
   ```
   > andTable
   [(True,True,True),(True,False,False),(False,True,False),(False,False,False)]
   ```
   Cada tupla na lista representa valores lógicos da forma (p, q, p E q). Sua função não deve simplesmente copiar esta lista como resultado, mas sim gerá-la variando os valores e aplicando o operador.
   
   
## Para saber mais sobre Haskell :mag:

Consulte as seções abaixo no livro [Learn you a Haskell for Great Good!](http://learnyouahaskell.com), de Miran Lipovača:
- [Funções de alta ordem (map, filter, etc.)](http://learnyouahaskell.com/higher-order-functions)
- [Funções anônimas](http://learnyouahaskell.com/higher-order-functions#lambdas)
- [List comprehension](http://learnyouahaskell.com/starting-out#im-a-list-comprehension)
- [Tuplas](http://learnyouahaskell.com/starting-out#tuples) 

