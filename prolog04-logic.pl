ao_lado(X, Y, L) :- nextto(X, Y, L) ; nextto(Y, X, L).

um_entre(X, Y, L) :- (nextto(X, N, L), nextto(N, Y, L)).
um_entre(X, Y, L) :- (nextto(Y, N, L), nextto(N, X, L)).


solucao(Avioes) :-
    Avioes = [_,_,_,_,_], /* piloto, cor, anomalia, bebida, esporte*/
    member(aviao(cel_milton,vermelha,_,_,_), Avioes),
    member(aviao(ten_walter,_,radio_transmissor,_,_), Avioes),
    member(aviao(_,verde,_,_,pesca), Avioes),
    member(aviao(maj_rui,_,_,_,futebol), Avioes),
    nextto(aviao(_,branca,_,_,_),aviao(_,verde,_,_,_), Avioes),
    member(aviao(_,_,altímetro,leite,_), Avioes),
    member(aviao(_,preta,_,cerveja,_), Avioes),
    member(aviao(_,vermelha,_,_,natacao), Avioes),
    [aviao(cap_farfarelli,_,_,_,_),_,_,_,_] = Avioes,
    ao_lado(aviao(_,_,_,café,_),(_,_,hidráulico,_,_), Avioes),
    ao_lado(aviao(_,_,_,cerveja,_),(_,_,bússola,_,_), Avioes),
    member(aviao(_,_,_,chá,equitação), Avioes),
    member(aviao(cap_nascimento,_,_,água,_), Avioes),
    ao_lado(aviao(cap_farfarelli,_,_,_,_),(_,azul,_,_,_), Avioes),
    um_entre(aviao(_,_,hidráulico,_,_),aviao(_,_,altímetro,_,_), Avioes),
    member(aviao(_,_,_,_,tenis), Avioes),
    member(aviao(_,_,temperatura,_,_), Avioes).
    