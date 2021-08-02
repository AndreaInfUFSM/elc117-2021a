# Prática: Programação Concorrente em Java


## Objetivos
Nesta prática você vai exercitar mais conceitos de programação concorrente e orientada a objetos em Java. Em particular, vamos trabalhar com sincronização de threads, para tratar **condições de corrida** (*race conditions*).

## Pré-requisitos

Antes de fazer a prática, consulte estes [slides](https://docs.google.com/presentation/d/1LZumlaNCOFiLPZZbRJbGnwmxO-qqPAQYpPD7j5iHUX4/edit?usp=sharing) ou [vídeo](https://drive.google.com/file/d/1R4GQbVf_z3b8Rti-SM_ZrjBzI5poQZdD/view?usp=sharing).




## Entrega

Esta prática vai ser entregue em um repositório específico no GitHub Classroom. Clique [aqui](https://classroom.github.com/a/SwoPMApm) para criá-lo. 

Para esta prática, você deverá criar um documento `JAVA08.md`, formatado usando [Markdown](https://guides.github.com/features/mastering-markdown/). Siga as instruções em cada parte da prática para saber como e o que entregar.


## Operações Bancárias

1. Para entregar esta parte da prática, crie um cabeçalho em `JAVA08.md` contendo o seguinte código em Markdown:
   ```
   ## Operações Bancárias
   ```
   No final desta parte você encontrará instruções sobre o que deve ser entregue.

2. Baixe o programa [OperacoesBancarias.java](src/OperacoesBancarias.java) e analise seu código. Veja que foi usada a palavra-chave `synchronized`, explicada nos slides. Execute o programa algumas vezes e verifique se o resultado é sempre correto (com saldo inicial de 100, 10 depósitos de 100 e 5 retiradas de 50, o saldo final deve ser de 850).

3. Remova os termos `synchronized` dos métodos `deposita` e `retira`. Recompile o programa e execute-o algumas vezes. Verifique se ocorrem execuções com resultado incorreto.
É possível que você execute o programa algumas vezes e não obtenha um resultado incorreto, já que a execução é muito rápida e as threads podem acabar executando em sequência. Isso não quer dizer que o programa esteja correto!

4. Para aumentar a chance de ocorrência do problema, neste repl.it temos outra versão do programa, com adição de pausas de execução (Thread.sleep): https://repl.it/@AndreaSchwertne/OperacoesBancarias#Main.java
Localize as pausas no código.

5. Compile e execute o programa, usando o botão Run no repl.it. Seja paciente :-)

6. É possível que o programa ainda produza resultados corretos mas, novamente, isso não quer dizer que o programa esteja correto! Para você não se cansar de executá-lo várias vezes, é fornecido um script para repetir a execução do programa e parar quando os resultados forem diferentes.
Por exemplo, para repetir a execução 20 vezes, execute no terminal do repl.it:
   ```
   bash repete-execucao.sh 20 java Main
   ```

7. Usando o programa original ou o programa no repl.it, capture uma imagem de alguma execução com resultado correto e outra com resultado incorreto. No `JAVA08.md`, entregue essas imagens e uma explicação sobre o que pode ter acontecido em cada execução.


## Array Compartilhado

1. Para entregar esta parte da prática, crie um cabeçalho em `JAVA08.md` contendo o seguinte código em Markdown:
   ```
   ## Array Compartilhado
   ```
   No final desta parte você encontrará instruções sobre o que deve ser entregue.

2. Baixe o arquivo [threadabc.zip](src/threadabc.zip), que contém os arquivos para os próximos exercícios, conforme explicado ao final dos slides.

3. LEIA ISSO ANTES: Neste programa, **3 threads** atualizam concorrentemente um **array compartilhado**, inserindo caracteres A, B ou C na próxima posição livre. Cada thread insere 20 caracteres, portanto, no final de cada rodada, a contagem de caracteres no array deve ser: A=20 B=20 C=20.

4. Execute o programa várias vezes e observe como a ordem de execução das threads pode variar. Além disso, observe que o resultado final nem sempre é correto (problema de **inconsistência de dados**).

5. Corrija o programa, utilizando um método `synchronized`. Identifique primeiro a classe que representa o objeto compartilhado, depois identifique o método que deve ser executado em exclusão mútua. 

6. Re-execute o programa algumas vezes para verificar a mudança no comportamento das execuções.


7. No `JAVA08.md`, entregue: a) uma imagem de execução do código original incorreto, b) uma amostra do trecho de código que você alterou e c) uma imagem de execução do código corrigido.


## Synchronized


Para entregar esta parte da prática, crie um cabeçalho em `JAVA08.md` contendo o seguinte código em Markdown:
   ```
   ## Synchronized
   ```

A palavra `synchronized` pode ser usada de mais de uma forma em Java, sempre com a intenção de garantir exclusão mútua entre threads concorrentes, no acesso a um dado compartilhado.

É muito comum encontrar tutoriais exemplificando o uso de `synchronized`. Assim, nesta parte da prática, você vai pesquisar algum outro exemplo de uso de `synchronized` e usá-lo como referência para criar 2 códigos: um código incorreto (sem synchronized) e outro correto (com synchronized). Você pode personalizar o exemplo como desejar. Para aumentar a chance de execuções com resultado inconsistente, você pode inserir repetições ou pausas nos códigos. 

Nesta parte do `JAVA08.md`, você entregará:
- link para o exemplo de referência
- links para os 2 códigos que você criar (que deverão ser entregues no repositório também)
- imagens de uma execução incorreta e de uma execução correta.

