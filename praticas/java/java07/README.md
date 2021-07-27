# Prática: Programação Concorrente em Java


## Objetivos
Nesta prática você vai exercitar conceitos de programação concorrente e orientada a objetos em Java.

## Pré-requisitos

Antes de fazer esta prática, consulte este material:
- Introdução à programação concorrente (independente de linguagem): <a href="https://docs.google.com/presentation/d/1Ig1RQ8GQ_81eQAR8z9EVH_k_cJ1Azcc-NaWvxRvdSWM/edit?usp=sharing">slides</a> ou <a href="https://drive.google.com/file/d/12AyYI1cY5pC6Q8M-cQdUhVonH2sey9hJ/view?usp=sharing">vídeo</a> 
- Programação concorrente em Java: <a href="https://docs.google.com/presentation/d/15hGOb79dudYoU1Q7FTLn2iUNjIWFeddB12QuD2Fy27A/edit?usp=sharing">slides</a> ou <a href="https://drive.google.com/file/d/1gX2Zy6tm9gd02LCtfmXgI6z-iGHknRDk/view?usp=sharing">vídeo</a> (classe Thread, interface Runnable, métodos run, start e join)



## Entrega

Esta prática vai ser entregue em um repositório específico no GitHub Classroom. Clique [aqui](https://classroom.github.com/a/c0QAj9_P) para criá-lo. 



## Exercícios sem GUI

1. Baixe o programa [MainThread.java](src/MainThread.java) ou use este [repl.it](https://repl.it/@AndreaSchwertne/java-thread). Este programa cria 2 threads concorrentes, usando as abordagens explicadas nos slides. Compile o programa e execute-o mais de uma vez, observando as saídas. Você conseguiu notar o não-determinismo característico da execução concorrente? 

2. Acrescente outra thread ao programa, definindo uma classe derivada de `Thread`. Nesta nova classe, o método `run()` deverá executar um laço que mostre 20 vezes a hora do sistema, num formato que mostre horas, minutos, segundos e milissegundos. Lembre de ativar a thread usando `start()`. Obs.: Você vai precisar pesquisar como obter a hora do sistema em Java e como formatá-la.

3. Acrescente outra thread ao programa, desta vez definindo uma nova classe que implemente a interface `Runnable`. O método `run()` deverá executar um laço que faça 10 sorteios de valores em um conjunto à sua escolha (por exemplo, números de 0 a 5). Para fazer isso, você pode usar o método `Math.random()` ou a classe `Random` (pesquisa sobre esses recursos). Lembre de ativar a thread usando `start()`.


## Exercícios com GUI

1. Baixe o programa [ThreadDemoSwing.java](src/ThreadDemoSwing.java). Este programa usa 2 threads que escrevem concorrentemente em áreas de texto numa interface gráfica. Você pode controlar as threads usando os botões Run e Stop.

2. Analise o código em [ThreadDemoSwing.java](src/ThreadDemoSwing.java) e localize a parte que define o comportamento das threads. Note que grande parte deste código se refere à interface gráfica, usando classes do Swing, e foi gerado automaticamente pelo Netbeans.

3. Você deverá alterar o código para que uma das threads tenha um comportamento diferente. Por exemplo: faça com que a mensagem contenha algum dado gerado aleatoriamente e seja mostrado com uma frequência diferente.







