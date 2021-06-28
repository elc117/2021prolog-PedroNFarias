filterPositive([],[]).
filterPositive([H|T],L) :- H > 0, L = [H|T1], filterPositive(T,T1).
filterPositive([H|T],L) :- H =< 0, filterPositive(T,L).

isPositive([]).
isPositive([H|T]) :- H > 0, isPositive(T).
isPositive([H|_]) :- H =< 0, false.

filterEven([],[]).
filterEven([H|T],L) :- mod(H,2) =:= 0 , L = [H|T1], filterEven(T,T1).
filterEven([H|T],L) :- mod(H,2) =\= 0, filterEven(T,L).

ziplus([],[],[]).
ziplus([H1|T1],[H2|T2],L) :- H3 is H1 + H2,
    					   ziplus(T1,T2,L2),
    					   L = [H3|L2].
    