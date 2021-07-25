# Prática: Classes abstratas em Java


## Objetivos
Nesta prática você vai trabalhar com classes abstratas em Java.

## Pré-requisitos

Antes desta prática, consulte o material sobre classes abstratas e interfaces em Java (<a href="https://docs.google.com/presentation/d/1LvvfEGY9IxSbbnlcLILp-4yZBtSk4W3-ugOvR8CveSs/edit?usp=sharing">slides</a> | <a href="https://drive.google.com/file/d/1l4p_gTNBkmvi89xO60-ry4s6XZWaPzeb/view?usp=sharing">vídeo</a>).


## Entrega

Esta prática vai ser entregue em um repositório específico no GitHub Classroom. Clique [aqui](https://classroom.github.com/a/Sx9aKn1W) para criá-lo. 


## Exercícios

Sua missão nesta prática vai ser criar um conjunto de classes representando blocos inspirados no jogo Minecraft. Os [blocos](https://minecraft.fandom.com/pt/wiki/Categoria:Blocos) no jogo podem ser de vários tipos: Madeira, Grama, Terra, Pedra, Pedregulho, etc. Quando blocos são quebrados, eles "dropam" itens que podem ser coletados. O tipo dos itens "dropados" depende da ferramenta usada (ex.: com/sem picareta). Créditos para a ideia do exercício: veterano mvschmaedeck e https://cseducators.stackexchange.com/q/4689/1913




## Exercícios sem GUI



1. Em um arquivo `Bloco.java`, defina uma classe abstrata `Bloco`, com métodos:
   - `String getNome()`, que deverá retornar o nome do tipo do bloco, por exemplo: Madeira;
   - `List<Bloco> dropItens(boolean)`, que retornará uma lista de blocos dropados, com/sem o uso de uma ferramenta (por isso o argumento boolean, que apenas indica presença/ausência, para você não ter que criar outra hierarquia de classes representando ferramentas).
   Lembre que uma classe abstrata deve ter pelo menos um método abstrado. Qual desses métodos deverá ser abstrato?

2. Em arquivos separados, defina pelo menos duas classes derivadas concretas (por exemplo `Madeira, Grama, Terra, Pedra`, etc.), implementando o que for necessário.

3. Defina uma classe usuária `MinecraftApp` no arquivo `MinecraftApp.java`, contendo um método `main`. Neste método, crie uma lista com alguns blocos variados, depois percorra a lista dropando itens e os adicionando a outra lista.

## Exercícios com GUI

Implemente uma interface gráfica para mostrar imagens dos blocos e informações sobre o que eles dropam! Você pode usar como ponto de partida o código usado na prática anterior (procure por `helloimage`). Entregue esta parte em um arquivo nomeado `MinecraftAppGUI.java`.







