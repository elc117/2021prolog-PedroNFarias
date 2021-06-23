membro(Nome, Idade).

solucao(X) :-
    Lugares = [_,_,_],
    [_,(carla,_),_] = Lugares,
    [_,(_,idade2),_] = Lugares,
    idade2 is idade1 + 3,
    [_,_,(_,7)].    
