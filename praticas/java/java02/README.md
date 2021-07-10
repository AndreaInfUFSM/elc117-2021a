# Prática: Classes e Objetos em Java

Nestes exercícios, você vai colocar em prática os conceitos de encapsulamento, classes e objetos em Java.
Antes de fazer os exercícios, consulte o vídeo sobre esses conceitos (também na forma de slides, mas o vídeo está mais completo).



## Entrega

Esta prática vai ser entregue em um repositório específico no GitHub Classroom. Clique [aqui](https://classroom.github.com/a/jg7F15Ve) para criá-lo. Este repositório não vai ser usado nas práticas seguintes.

Dentro desse repositório, você vai organizar seus arquivos em pastas, conforme as orientações em cada parte da prática. Serão 3 pastas no total: `points`, `associations` e `aggregation`. Siga sempre os padrões de nomes de pastas e arquivos, pois do contrário sua prática não será contabilizada na avaliação.



## Classe Circle

Esta parte da prática não precisa ser entregue, mas é **muito importante** que seja realizada. Os exercícios seguintes vão assumir que você fez esta parte.

1. Baixe o programa [Circle.java](src/Circle.java).

2. Em Circle.java, acrescente um método `public void setRadius(double radius)` à classe Circle. Este método deverá alterar o raio de um círculo.

3. Também em Circle.java, modifique o método `main` para chamar o método `setRadius` no círculo `c`.

4. Continuando em Circle.java, acrescente as seguintes linhas ao final do método `main`:
   ```
   Circle c2;
   c2.setRadius(5.0);
   ```
   Compile o programa. O que acontece?

5. Corrija o programa Circle.java, criando um objeto da classe Circle que será referenciado por `c2`. Compile novamente o programa.

6. Em Circle.java, acrescente um novo construtor à classe `Circle`, que receba valores para `x`, `y` e `r`. Lembre-se que um construtor tem que obedecer algumas convenções.

7. Em Circle.java, modifique o método `main` para criar outro objeto da classe `Circle`, usando o novo construtor. Mostre a área do novo objeto.

8. Baixe o programa [TestCircle.java](src/TestCircle.java) e **coloque-o na mesma pasta** do programa Circle.java. Isso vai fazer com que uma classe seja visível à outra.

9. Em TestCircle.java, teremos um erro de compilação se acrescentarmos este código ao final do método `main`:
    ```
    c1.r = 0.5;
    ```
    Este erro se deve à visibilidade `private` do atributo `r`. Caso o atributo deva poder ser alterado, a forma mais recomendada é definir um método *setter*. O método `setRadius`  é um exemplo de *setter*. 
    Outra opção (menos "orientada a objetos", mas usada na prática em classes muito pequenas ou para atributos constantes) seria alterar a visibilidade do atributo para `public`. 
    Teste essa opção de visibilidade no atributo  `r` da classe `Circle` e compile novamente o programa. Observe que o erro de compilação fica resolvido, mas o programa **quebra um princípio da orientação a objetos**. 
   

10. Agora restaure para `private` a visibilidade do atributo `r` no programa Circle.java **e prometa nunca mais usar public em um atributo sem ter um bom motivo para isso!**. 


11. Ainda em Circle.java, inclua a seguinte linha de código ao final do método `main`:
    ```
    c.r = 0.5;
    ```
    Compile o programa e veja que não haverá erro relacionado à visibilidade. Qual será o motivo disso?
   

12. Em Circle.java, acrescente a seguinte linha no construtor `Circle()`:
    ```
    System.out.println("New Circle");
    ```
    Com esta alteração, quais vão ser as saídas dos programas Circle.java e TestCircle.java? Execute os programas para conferir.

13. No programa TestCircle.java, acrescente a seguinte linha ao final do método `main`:
    ```
    Circle[] circs = new Circle[10];
    ```
    Os colchetes designam arrays em Java! Você acha que a saída do programa será modificada?

14. Acrescente as seguintes linhas ao programa TestCircle.java:
    ```java
       for (int i = 0; i < circs.length; i++) {
          circs[i] = new Circle();
       }
    ```
    Qual será a saída do programa agora?



## Classe Point 

Entregue esta parte numa pasta nomeada `point` dentro do seu repositório de entrega.

1. Em um arquivo `Point.java`, crie uma classe denominada ``Point``, que armazene as coordenadas ``(x,y)`` de um ponto num plano. A coordenada default para qualquer ponto deve ser ``(0.0,0.0)``. Além do construtor, esta classe deve conter:

   - um método que desloque as coordenadas de um ponto (x,y) para as coordenadas (x+dx,x+dy), sendo dx e dy argumentos do método

   - um método que calcule a distância entre 2 pontos (x1,y1) e (x2,y2) segundo o teorema de Pitágoras: 
     ```
     dx = x2 - x1
     dy = y2 - y1
     distancia = sqrt(dx*dx + dy*dy)
     ```
     
   **Dica**: para o cálculo da raiz quadrada, consulte os exemplos da seção [Beyond Basic Arithmetic](http://download.oracle.com/javase/tutorial/java/data/beyondmath.html), na página de [tutoriais Java](http://download.oracle.com/javase/tutorial/) da Oracle. Estes tutoriais não foram atualizados para versões mais recentes do JDK, mas para esta prática isso não importa.

2. Em um arquivo `TestPoint.java`, crie um programa Java que utilize a classe `Point` criada no exercício acima.


## Associações entre classes

Entregue esta parte numa pasta nomeada `associations` dentro do seu repositório de entrega.

No "mundo real", programas orientados a objetos têm muitas classes e elas se relacionam de diferentes formas. Em https://www.geeksforgeeks.org/association-composition-aggregation-java/, você encontra alguns tipos de relacionamento entre classes, com explicações e exemplos de código. A maior parte dos códigos usa recursos que você já deve entender, mas com algumas novidades em Java.

Sua tarefa aqui vai ser focada nos 2 primeiros exemplos. Copie esses 2 exemplos localmente, em arquivos nomeados `Association.java` e `Aggregation.java`, respectivamente. Analise os códigos e identifique o que você já conhece e o que é novidade. Veja que estes códigos não usam arrays como mostrado na primeira parte da prática, mas sim classes que representam estruturas de dados. Quais são elas? Execute os programas e busque ajuda no chat da turma se tiver dúvidas.



## Crie sua agregação de classes

Entregue esta parte numa pasta nomeada `aggregation` dentro do seu repositório de entrega.

Sua tarefa aqui vai ser criar uma agregação de classes em outro contexto à sua escolha, inspirando-se no exemplo em `Aggregation.java`. Dica: Pense em programas que você usa e tente identificar pelo menos 2 possíveis classes que se relacionem entre si, de forma semelhante ao exemplo.

Requisitos para esta parte:
1. Você deverá criar uma classe principal contendo apenas o método `main`.
2. Você deverá criar no mínimo outras 2 classes relacionadas, usadas no `main` da classe principal. Ou seja, seu programa pode ter menos classes do que o exemplo do site, mas também pode ter mais.
3. Todas suas classes deverão ter construtores, a não ser no caso da classe que contém o `main`.
4. Você **não deve simplesmente renomear** as classes, atributos e métodos do exemplo, mas sim criar classes que façam sentido em outro contexto. Ou seja: classes com outras quantidades/tipos de atributos e métodos.
5. Você deverá ter no mínimo um método que implemente alguma lógica usando os atributos, isto é, que não seja um simples `getter` ou `setter`. Pode ser algo bem simples, por exemplo usando aritmética básica ou operações com strings.


















