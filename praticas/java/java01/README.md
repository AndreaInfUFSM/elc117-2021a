# Prática: Primeiro Contato com Java


Nesta parte da disciplina, vamos inverter a ordem clássica de teoria seguida de prática. Vamos primeiro fazer uma prática com Java, a linguagem orientada a objetos que vamos utilizar, para logo depois entender mais sobre este paradigma de programação.

## Preparação do Ambiente 


Para fazer estes exercícios, você vai precisar de um ambiente de desenvolvimento Java (Java Development Kit - JDK). Existem diferentes ambientes e versões. Você encontra algumas delas aqui: https://www.oracle.com/java/technologies/javase-downloads.html

Você também pode começar usando o ambiente de desenvolvimento Java disponível no Repl.it, mas é recomendável manter uma instalação local do Java para as práticas seguintes.


## Exercícios


1. Baixe o programa [OlaMundo.java](src/OlaMundo.java).

2. Num terminal de comandos, compile o programa:

   ```
   javac OlaMundo.java
   ```
   O comando acima produz um arquivo .class para a classe contida em OlaMundo.java. Um arquivo .class contém um código (bytecode) interpretável por uma máquina virtual Java.

3. Execute o programa, informando o **nome da classe que contém um método main**:

   ```
   java -cp . OlaMundo
   ```
   Obs.: Se algo der errado e você estiver usando Windows, veja esta [página da Oracle](https://docs.oracle.com/javase/tutorial/getStarted/problems/index.html) sobre problemas comuns e suas soluções. 


4. Baixe o programa [Circle.java](src/Circle.java) e analise seu código. Você consegue prever a saída deste programa antes de executá-lo?

5. Compile e execute o programa:
   ```
   javac Circle.java
   java -cp . Circle
   ```

6. Baixe o programa [TestCircle.java](src/TestCircle.java) e coloque-o na mesma pasta do programa Circle.java.

7. No programa [TestCircle.java](src/TestCircle.java), inclua a seguinte linha de código ao final do método `main`:
    ```
    c1.r = 0.5;
    ```
    Compile o programa. Algo vai dar errado... Se o código fosse em C e você quisesse acessar um elemento de um struct, isso estaria certo. Por que será que em Java é diferente? Aguarde o novo episódio, ou tente desvendar esee mistério consultando a bibliografia básica da disciplina :-) (Robert Sebesta. Conceitos de Linguagens de Programação. Bookman, 2018. Disponível no [Portal de E-books](https://www.ufsm.br/orgaos-suplementares/biblioteca/e-books-2/) da UFSM).
    

8. Depois dessa primeira experiência com Java em terminal / linha de comando, **avise no Discord se conseguiu completar ou não esta prática**, postando `java01 euconsegui` ou `java01 eutentei`. Depois escolha um IDE de sua preferência e repita a execução dos programas desta prática. Usando um IDE, os comandos de compilação e execução ficarão escondidos, mas continuam sendo chamados.

9. Se você já quiser se aventurar por códigos maiores, baixe o programa [HttpURLConnectionExample.java](src/HttpURLConnectionExample.java). Este programa faz uma requisição HTTP ao GitHub. Compile e execute o programa para ver o resultado. Modifique o programa para fazer uma requisição a uma URL diferente. Por exemplo, troque o usuário do GitHub ou troque a URL para este serviço com piadas do Chuck Norris: https://api.chucknorris.io/jokes/random
