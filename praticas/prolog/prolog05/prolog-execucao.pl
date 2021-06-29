%---------------------------------------------------------------
% Fatos e regras em Prolog para ilustrar o controle de execução
%---------------------------------------------------------------

%---------------------------------------------------------------
% Exemplo com fatos e regras sem recursão

female(marge).
female(lisa).
female(maggie).
female(wilma).
female(pebbles). 
male(homer).
male(bart).
male(fred).

parent(marge, bart).
parent(homer, bart).
parent(marge, lisa).
parent(homer, lisa).
parent(marge, maggie).
parent(homer, maggie).
parent(wilma, pebbles).
parent(fred, pebbles).

father(X, Y) :- 
  parent(X, Y), 
  male(X).

mother(X, Y) :- 
  parent(X, Y), 
  female(X).
  
son(X, Y) :- 
  parent(Y, X), 
  male(X).
  
daughter(X, Y) :- 
  parent(Y, X), 
  female(X).

%------------------------------------------------------------
% Exemplo com predicado recursivo

ismember(X, [X|_]).        % ismember(X, [Head|Tail]) is true if X = Head 
                           % that is, if X is the head of the list
ismember(X, [_|Tail]) :-   % or if X is a member of Tail,
  ismember(X, Tail).       % ie. if ismember(X, Tail) is true.

%------------------------------------------------------------
% Regras não recursivas, sem e com cut

b(2).
b(3).
c(4).
c(5).
regra1(X, Y) :- b(X), c(Y).
regra2(X, Y) :- b(X), !, c(Y).

%------------------------------------------------------------
% Fatoriais sem e com cut

fatv1(0,1).
fatv1(N,X) :- 
	N1 is N - 1,
	fatv1(N1, X1),
	X is N*X1.

fatv2(0,1).
fatv2(N,X) :- 
	N1 is N - 1,
	fatv2(N1, X1),
	X is N*X1, !.

fatv3(0,1).
fatv3(A,B) :-  
	A > 0, 
    C is A-1,
    fatv3(C,D),
    B is A*D.

