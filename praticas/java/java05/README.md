# Prática: Polimorfismo em Java


## Objetivos
Nesta prática você vai exercitar conceitos relacionados a polimorfismo em Java, ao mesmo tempo em que continua a aproveitar o que aprendeu sobre herança, encapsulamento, classes e objetos.

## Pré-requisitos

Consulte o material sobre polimorfismo (<a href="https://docs.google.com/presentation/d/1Tt6vUSIjWtfty1bZdmYqYShlZ_lqIXYfn9MuYiOcb8U/edit?usp=sharing">slides</a> | <a href="https://drive.google.com/file/d/1bhFGge-oVctxXaXDbUzsN9afseP4ZWiD/view?usp=sharing">vídeo</a>) antes desta prática.

## Entrega

Esta prática vai ser entregue em um repositório específico no GitHub Classroom. Clique [aqui](https://classroom.github.com/a/SDx-xTOk) para criá-lo. 

O formato da entrega vai ser um pouco diferente, para você exercitar o uso de [Markdown](https://guides.github.com/features/mastering-markdown/), que é uma sintaxe simples para formatar documentação na Web.

Você vai entregar os códigos e também um documento `JAVA05.md`, contendo as perguntas e as respostas dos exercícios numerados desta prática (CLI e GUI). Você formatará as respostas neste documento usando Markdown, na forma de texto, imagem ou código Java, dependendo do que for solicitado.


## Preparação

Esta parte é uma preparação para o exercícios e não precisa constar no documento de entrega. Para começar, baixe o arquivo [polymorphism.zip](src/polymorphism.zip) ou, se você fez fork do repositório da disciplina, sincronize os repositórios seguindo estas [instruções](https://docs.github.com/en/github/collaborating-with-pull-requests/working-with-forks/syncing-a-fork) (também possível via [linha de comando](https://www.freecodecamp.org/news/how-to-sync-your-fork-with-the-original-git-repository/).

Neste código fornecido, há uma hierarquia de classes em Java inspiradas em jogos estilo RPG:
- [GameItem.java](src/polymorphism/GameItem.java): superclasse que representa itens que podem ser colocados em uma sacola;
- [Weapon.java](src/polymorphism/Weapon.java): subclasse de GameItem representando uma arma;
- [Consumable.java](src/polymorphism/Consumable.java): subclasse de GameItem representando um item consumível (comida, poção, etc.)
- [GameItemTestCLI.java](src/polymorphism/GameItemTestCLI.java): programa com interface textual (command-line) que usa as classes acima
- [GameItemTestGUI.java](src/polymorphism/GameItemTestGUI.java): programa com interface gráfica (com Swing) que usa as classes acima



## Exercícios CLI (Command Line Interface)

Relembrando: Você vai entregar os códigos e também um documento `JAVA05.md`, contendo as perguntas e as respostas dos exercícios numerados desta prática (CLI e GUI). Você formatará as respostas neste documento usando Markdown, na forma de texto, imagem ou código Java, dependendo do que for solicitado.

1. Compile o código e execute a classe `GameItemTestCLI`. Entregue uma imagem que registre este momento emocionante! 

2. Observe que o método `main` dessa classe cria uma coleção de objetos e implementa diferentes formas de iterar sobre eles (veja comentários no código). Entregue um recorte de código desta parte.

2. Observe que, para objetos `Consumable`, não são mostrados todos os atributos nos `println`. Altere o código em [Consumable.java](src/polymorphism/Consumable.java) para mostrar o restante dos atributos. Entregue os trechos de código alterados e uma explicação sobre eles.

3. Em [GameItemTestCLI.java](src/polymorphism/GameItemTestCLI.java), no último laço, há uma linha comentada que causa erro de compilação. Entregue uma explicação sobre o motivo do erro com base nos conceitos de orientação a objetos.

4. Ao final de [GameItemTestCLI.java](src/polymorphism/GameItemTestCLI.java), adicione um código equivalente ao último laço do programa, porém usando o método `forEach` explicado [aqui](https://www.baeldung.com/foreach-java). Entregue o trecho de código adicionado e uma explicação sobre ele.

5. Ao final de [GameItemTestCLI.java](src/polymorphism/GameItemTestCLI.java), adicione um código que calcule o peso total da sacola, considerando todos os itens que estão dentro dela. Entregue o trecho de código adicionado e uma explicação sobre ele.

6. Em [Consumable.java](src/polymorphism/Consumable.java), quando o item é consumido, seu peso continua inalterado. Altere o código para zerar o peso do item quando ele for consumido. Atenção ao encapsulamento! Entregue uma explicação sobre as alterações necessárias no código.





## Exercícios GUI (Graphical User Interface)

Relembrando: Você vai entregar os códigos e também um documento `JAVA05.md`, contendo as perguntas e as respostas dos exercícios numerados desta prática (CLI e GUI). Você formatará as respostas neste documento usando Markdown, na forma de texto, imagem ou código Java, dependendo do que for solicitado.

1. Execute a classe `GameItemTestGUI` e veja o que acontece a cada clique no botão Next. Entregue uma imagem que registre esse momento histórico da sua vida acadêmica!

2. Confira esta classe linha por linha e compare com a saída observada. Veja que há um trecho de código anotado com `Override`. O que significa esta anotação e qual sua relação com a programação orientada a objetos? 

2. Baixe o arquivo [helloimage.zip](src/helloimage.zip) e descompacte-o. No programa [HelloImageSwing.java](src/helloimage/HelloImageSwing.java) há um exemplo simples que mostra uma imagem (ícone) na interface gráfica. Compile e execute este programa. Entregue uma imagem desta etapa. Cuidado para que o arquivo com a imagem esteja acessível ao método `main`.

3. Sua missão agora será alterar o código de [GameItemTestGUI.java](src/polymorphism/GameItemTestGUI.java) para setar e mostrar, na interface gráfica, imagens associadas a cada item na sacola. Entregue uma imagem do resultado e um texto contando sua saga para completar a missão!













