# Prática: Classes e Objetos em Java


## Objetivos
Nesta prática você vai exercitar conceitos de encapsulamento, classes e objetos em Java, incluindo o uso dos termos `static` e `this`. Você também vai explorar um programa com interface gráfica, que é um ótimo `playground` para você ver orientação a objetos em ação!

## Pré-requisitos

Consulte estes [slides](https://docs.google.com/presentation/d/1fdbKfM4GmvfZxQVXi_5fBL7HetkdCx74z-Ih0vjmQZw/edit?usp=sharing) sobre uso de `static` antes desta prática.

## Entrega

Esta prática vai ser entregue em um repositório específico no GitHub Classroom. Clique [aqui](https://classroom.github.com/a/_cwcRx7m) para criá-lo. Este repositório não vai ser usado nas práticas seguintes.

Dentro desse repositório, você vai entregar somente um arquivo, cujo nome você vai descobrir no final :-)



## Usando class, static e this



Esta parte da prática não precisa ser entregue, mas é **muito importante** que seja realizada. Os exercícios seguintes vão assumir que você fez esta parte.

1. Baixe o programa [User.java](User.java).

2. Você consegue deduzir qual será a saída do método `main` do programa sem executá-lo? Pense antes e depois execute o programa para conferir.

3. Acrescente a seguinte linha ao final do método `main`:
   ```
   System.out.println(User.getCount());
   ```
   Qual será a saída do programa agora? Execute o programa para conferir.
   
4. Acrescente a seguinte linha ao final do método `main`:
   ```
   System.out.println(name);
   ```
   Compile o programa e observe o erro produzido.

5. Substitua a linha com erro do exercício anterior pela seguinte linha:
   ```
   System.out.println(count);
   ```
   Compile o programa. Por que, ao contrário do exercício anterior, esta linha não causa erro de compilação?
   
6. Quais são os construtores da classe `User`?

7. Observe que os construtores usam uma palavra reservada do Java: `this`.  Veja que os usos são diferentes: no primeiro, `this` é usado como se fosse uma chamada de método; no segundo, `this` é usado como se fosse uma referência para um objeto. Consulte o tutorial da Oracle para saber mais sobre isso: https://docs.oracle.com/javase/tutorial/java/javaOO/thiskey.html


8. Se você leu o tutorial com atenção, saberá por que o código abaixo não irá compilar:
   ```
   public User() {
     System.out.println("construtor chamado");
     this("randomname");
   }
   ```
   Compile o código e confira o motivo.
   


## Usando classes do pacote Java Swing
   
   
Swing é um dos toolkits que podem ser usados para criar interfaces gráficas em Java para desktop. Ele oferece várias classes úteis e é distribuído junto com as versões do kit de desenvolvimento Java (JDK). Existem outros toolkits similares, por exemplo JavaFX, JGoodies, Apache Pivot, etc., que são distribuídos separadamente.

Vamos partir de um exemplo simples com Swing para depois modificá-lo e usá-lo junto com a classe `User` dos exercícios anteriores. Usaremos o repl.it, para você ver que é possível usar Java com interface gráfica em nuvem, mas você pode copiar os exemplos e abri-los localmente no seu IDE favorito.

1. Abra [este repl.it](https://repl.it/@AndreaSchwertne/java03swing) e execute o código que está em `Main.java`.  Na interface gráfica que será mostrada, clique no botão e veja o que acontece. Você consegue identificar a parte do código que trata o clique no botão? Essa parte usa alguns recursos de Java/OO que ainda não vimos, mas, basicamente, chamamos o método `addActionListener` do objeto designado por `b` para especificar o código que será executado quando o botão for clicado. As linhas seguintes desta chamada de método usam recursos de OO em Java que veremos mais adiante.


2. Se você tiver dificuldade em entender o código do exercício acima, veja este [vídeo](https://drive.google.com/file/d/1WiuyRxfp6PPM5eCvksbB_2e-bRlmZHid/view?usp=sharing) que traz explicações linha por linha.

2. Faça fork do código e altere parâmetros do botão em `setBounds` para deixá-lo conforme seu gosto :-).  Este exercício não precisa ser entregue. Para entender essa e outras operações que podem ser executadas com um botão, veja a documentação para a classe `JButton` em https://docs.oracle.com/en/java/javase/11/docs/api/java.desktop/javax/swing/JButton.html (esta classe usa conceitos de OO que veremos adiante: herança e polimorfismo).

3. Neste outro [repl.it](https://repl.it/@AndreaSchwertne/java03swinguser) há uma versão modificada do exemplo anterior, agora com um campo de texto (`JTextField`) além do botão. Execute o código que está em `Main.java`, preencha o campo de texto e clique no botão para ver o que acontece.

4. Veja que neste repl.it há mais arquivos. Em `NewMain.java`, temos um código que usa a classe `User` dos exercícios anteriores. Com poucas linhas a mais, o código cria um novo objeto `User` e o adiciona em uma lista, a cada vez que o botão é clicado. A lista é da classe `ArrayList`. Veja mais sobre isso aqui: https://www.caelum.com.br/apostila-java-orientacao-objetos/collections-framework/#listas-javautillist

5. Veja que tanto `NewMain.java` como `Main.java` possuem um método `main`. No repl.it (e em muitos IDEs), o botão/comando para execução de um projeto Java é vinculado a uma classe default (no repl.it é a classe Main). Isso é uma convenção do IDE, não da linguagem. No repl.it, para executar a classe `NewMain`, basta usar o Shell (não a Console) e usar os seguintes comandos: 
   ```
   > javac NewMain.java
   > java -cp . NewMain
   ```

6. Finalmente chegamos no exercício em que você vai programar! Altere `NewMain.java`, acrescentando um novo botão na interface. Ao clicar neste botão, deverá ser mostrada, no terminal, a lista de todos os objetos da classe User inseridos no ArrayList. Sim, você vai ter que pesquisar como percorrer um ArrayList. Você também poderá fazer outras modificações que desejar em `NewMain.java`. Entregue apenas o `NewMain.java` modificado.




























