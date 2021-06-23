:- use_module(library(random)).

repete(0, _, []).
repete(N, C, L) :- 
	N > 0,
	L = [C | T],
	N1 is N - 1,
	repete(N1, C, T).

sum([],0).
sum([H|T], S) :-
   sum(T, S1),
   S is H + S1.

incN([],_,[]).
incN([H|T],N,[H2|T2]) :-
    incN(T,N,T2),
    H2 is H + N.

hasN([],0).
hasN([_|T],N) :- 
    hasN(T,N1),
    N is N1 + 1.

countdown(0,[]).
countdown(N,[H|T]) :-
    H is N,
    N1 is N - 1,
    countdown(N1,T),!.

nRandoms(0,[]).
nRandoms(N,[H|T]) :-
    random(1,100000,H),
    N1 is N - 1,
    nRandoms(N1,T),!.

    
    

    