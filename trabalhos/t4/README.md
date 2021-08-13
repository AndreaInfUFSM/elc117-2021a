# Trabalho 4: Um Jogo de Aventura na Universidade com Framework Orientado a Objetos




## Motivação


A vida universitária é cheia de descobertas e desafios. Quem entra nesse jogo aposta em uma área de interesse, mas descobre que um campus universitário é um "mini-mundo", capaz de reunir um pouco de tudo que a humanidade já criou, nas mais diversas áreas. Você já visitou o Jardim Botânico da UFSM? Já circulou pela Biblioteca Central? Já formou fila no RU? Imagina como é o datacenter do CPD? Já visitou os laboratórios do CT? Cada local num campus é muito mais que um espaço físico, é um ponto de encontro entre mentes ansiosas por ir além do que já conhecem. Cada semestre tem uma largada e uma chegada, cada disciplina é um zoom em uma parte de um grafo, cada turma é uma explosão de interações. Os obstáculos são dos mais variados tipos, e talvez o tempo seja o mais terrível deles, mas nenhum é intransponível. É, a vida universitária é um jogo, tanto no mundo real como no virtual.

## Objetivo

Neste trabalho, você vai criar um jogo de aventura inspirado na vida universitária na UFSM, usando um framework orientado a objetos em Java (LibGDX). Você terá liberdade para definir vários elementos do jogo, respeitando alguns requisitos.


## Requisitos

### Sobre o jogo

1. O jogo deverá ter diversos elementos que serão representados por classes e objetos no código. 

2. O jogo deverá ter pelo menos 2 telas.

3. Além de imagens, o jogo também deverá apresentar algum texto.

4. O jogo deverá funcionar em desktop e em navegador web, usando as facilidades da LibGDX para aproveitar o mesmo código em diferentes plataformas.

5. O jogo deverá ser disponibilizado no itch.io, em uma página de "game jam" que será criada pela professora.


### Sobre o desenvolvimento

1. Este trabalho deve ser desenvolvido **em dupla**.

2. O desenvolvimento deverá ser equilibrado entre participantes da dupla. O repositório de entrega deverá ter commits de cada participante.

3. Lembrem sempre que vocês estarão exercitando **programação orientada a objetos**, então aproveitem todos os recursos de OO e fujam de soluções que se inspirem na programação procedimental com C.

4. A arte usada no jogo deve ser criada pela dupla e/ou selecionada entre opções de uso free para fins não comerciais.

5. Vocês têm liberdade para trocar ideias com colegas e procurar exemplos de jogos que sirvam de inspiração e referência para o código, mas tenham sempre em mente que as ideias e o jogo devem ser produções suas. 

6. É obrigatório informar referências e dar créditos para sites, exemplos e pessoas que ajudaram. Isso deve estar no código e também na página do jogo no itch.io.

7. Qualquer participante da dupla deverá ser capaz de explicar o código em detalhes caso solicitado. 

8. Desenvolvam o jogo incrementalmente. Procurem partir de algum exemplo simples e depois acrescentem novas funcionalidades. Façam commit e push com frequência no GitHub.



## Entrega

- Todo o código deverá ficar em um único repositório de entrega no GitHub. Clique neste link para criá-lo: https://classroom.github.com/g/N8IHougm
- Primeira entrega: 18/08/21 (entrega parcial, com funcionalidades testáveis em desktop e web)
- Segunda entrega: 30/08/21 (entrega final)


## Material de apoio


### Documentação oficial da LibGDX

- [Wiki da LibGDX](https://github.com/libgdx/libgdx/wiki)
- [Configurando o ambiente de desenvolvimento](https://libgdx.com/dev/setup/)  
- [Trabalhando com imagens 2D](https://github.com/libgdx/libgdx/wiki/Spritebatch%2C-Textureregions%2C-and-Sprites)  
- [Tratando eventos de teclado/mouse/touch](https://github.com/libgdx/libgdx/wiki/Mouse%2C-Touch-and-Keyboard)  

### Tutoriais e outros materiais

- [Lista de tutoriais e exemplos](https://github.com/libgdx/libgdx/wiki/External-tutorials)  
  Lista sugerida na Wiki da LibGDX
  
- [Tutoriais LibGDX no site HappyCoding](https://happycoding.io/tutorials/libgdx/)
  Vários tutoriais, organizados por assunto
  
- [LibGDX Beginner Tutorial](https://www.codeandweb.com/texturepacker/tutorials/libgdx-physics)
  Tutorial passo-a-passo com screenshots e código
  
- [Criando Jogo estilo ZELDA com JAVA e LibGDX](https://www.youtube.com/watch?v=36mvpAn66Dc)  
  Playlist com vários vídeos em português

### Build/deploy para Web

Projetos em LibGDX podem ser configurados para execução na Web, com tradução do código Java em JavaScript/HTML5 feita via Google Web Toolkit (GWT). Há algumas restrições, mas elas podem ser contornadas e, no geral, o resultado é bom. O ideal é fazer build para Web desde o início do desenvolvimento, para evitar surpresas com incompatibilidades no final. Nesta página há algumas observações sobre isso: https://github.com/libgdx/libgdx/wiki/HTML5-Backend-and-GWT-Specifics

Para fazer build para Web:

```
cd pasta-do-projeto
./gradlew html:dist
```

Para testar o build, use um servidor Web local para servir o jogo (por exemplo, o módulo http.server do Python 3):
```
cd html/build/dist
python3 -m http.server 8000
```
Depois de testar localmente, você pode copiar o conteúdo da pasta `dist` para um servidor, como o itch.io, por exemplo.

  
### Exemplos de jogos com código-fonte

- [Insect's Life Quest](https://github.com/GabrielStrzal/InsectsLifeQuest)  
  Exemplo de jogo multiplataforma, com várias classes representando entidades do jogo.
  
- [AstonAdventure](https://github.com/hussa94/AstonAdventure)  
  Exemplo de jogo inspirado na vida universitária. Funciona em desktop.
  
- [Apex Pigeon - Arcade "Runner" Game](https://github.com/patpatchpatrick/ApexPigeon)  
  Outro exemplo de jogo multiplataforma.







