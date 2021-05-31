# Trabalho 1: *Generative Art* com Programação Funcional em Haskell




## Motivação
Era uma vez uma turma de estudantes com muita criatividade e curiosidade, que acabaram confinados em suas casas para ajudar a conter a rede de propagação de um vírus malvadão. Com o confinamento, esta turma desenvolveu muitas habilidades, mas algumas formas de expressão e relacionamento ficaram bem limitadas. Ainda assim, essa turma não se deu por vencida e aceitou o desafio de se expressar por meio de... arte! Mas que tipo de arte??? Ah, a resposta aqui não é nada clássica -- estamos falando de **arte generativa**, criada em computadores através de algoritmos!

## Objetivo
Seu objetivo neste trabalho é produzir um programa capaz de gerar uma imagem bacana algoritmicamente, usando programação funcional em Haskell.

## Requisitos

1. O programa deve usar recursos de programação funcional e trabalhar com listas.

2. A função principal do seu programa deve ficar dentro de um arquivo `Main.hs`.

3. Cada execução do programa deve gerar uma imagem parametrizada por algumas características (largura, altura e outras de acordo com o algoritmo).

4. A definição de parâmetros pode ser feita dentro do código ou pode ser lida da linha de comando ou de um arquivo. Mudanças nos parâmetros devem gerar imagens diferentes, com o mesmo algoritmo.

5. A imagem de saída do programa deve ser preferencialmente em formato SVG, ou seja, uma imagem vetorial (estática ou até mesmo animada). Esse formato pode ser facilmente gerado com strings, o que facilita o trabalho a partir dos exemplos fornecidos desde a primeira prática. 
   - Obs. 1: Formatos bitmap também são permitidos, especialmente se você estiver buscando mais desafios e quiser aprender recursos além daqueles vistos nas aulas.
   - Obs. 2: Se você sentiu alguma dificuldade nos exercícios, uma boa estratégia neste trabalho é criar um programa que gere formas geométricas simples, variando formas, cores e posições de acordo com algum algoritmo simples.


6. O programa não deve usar valores *hard-coded* para expressar a imagem. Tudo deve ser calculado a partir dos parâmetros de configuração (largura e altura da imagem, ponto inicial, etc.). Os parâmetros de configuração podem ser *hard-coded* ou, se você quiser ir além, pode ler esses parâmetros da linha de comando ou de um arquivo, conforme mencionado no item 3.




## Desenvolvimento

- Este trabalho deve ser desenvolvido **individualmente**.

- Lembre sempre que você está exercitando **programação funcional**, então resista à tentação de pensar como se estivesse programando numa linguagem procedimental e imperativa como C. 

- Na programação funcional, decompomos um algoritmo "complicado" em diversas funções simples. Uma função chama outra, e assim por diante. Cada função recebe alguns argumentos e produz um resultado, que serve de entrada para outra função. O código de entrada/saída não se mistura às funções que transformam os dados e expressam a lógica do algoritmo. Basicamente, seu programa terá apenas uma função que faz I/O (main) e várias funções que se encadeiam para produzir elementos da imagem.

- Operações repetitivas devem se preferencialmente expressas com funções pré-definidas em Haskell (alta ordem ou outras que você pode procurar) e/ou com *list comprehension*. Você também pode usar recursão, mas lembre que em muitos casos isso é desnecessário, pois existem muitas funções pré-definidas que podem ser combinadas para expressar um padrão de repetição.


- Você tem liberdade para trocar ideias com colegas e procurar trechos de código que ajudem no desenvolvimento, mas tenha sempre em mente que as ideias e o código devem ser produções suas. 

- Você deverá entregar código compatível com seus conhecimentos e deverá ser capaz de explicar seu código em detalhes caso solicitado. Se você usar recursos não explicados em aula, é sua responsabilidade entender como funcionam e pedir ajuda se necessário. Resista à tentação de copiar trechos de código com sintaxe desconhecida e que você não entende como funciona.

- Se você sentiu dificuldade nos exercícios, procure aproveitar este trabalho para exercitar um pouco mais o que já foi visto nas práticas e não se preocupe tanto em criar imagens atraentes com algoritmos complicados.

- Se você realizou os exercícios sem maiores dificuldades, procure se desafiar e ir além do que já conhece. Neste caso, só tenha cuidado com o prazo, pois é fácil ficar só navegando em busca de ideias e acabar não atingindo os objetivos.

- Desenvolva seu programa incrementalmente. Procure partir de alguma ideia simples e vá incrementando seu programa, desenvolvendo novas versões a cada vez. Faça commit e push com frequência no GitHub.

- Você deve dar créditos para sites e pessoas que ajudaram. 

## Critérios de Avaliação

A nota neste trabalho será atribuída da seguinte forma:

- 75%: código e funcionamento do programa de acordo com os requisitos e com o que foi visto nas aulas
- 25%: originalidade, criatividade e aprofundamento na programação funcional em Haskell

## Entrega

- Deadline: 14/06/21
- Link para criação do repositório de entrega:  https://classroom.github.com/a/W0zGEy8r
- Seu repositório de entrega deverá conter:
  - todo o código desenvolvido e
  - um arquivo `README.md` explicando como usar o programa e fornecendo um exemplo de imagem de saída, que também deverá estar armazenado no repositório.


## Material de apoio


- [Tutorial SVG](https://www.w3schools.com/graphics/svg_intro.asp)  
  Tutorial SVG no W3Schools






