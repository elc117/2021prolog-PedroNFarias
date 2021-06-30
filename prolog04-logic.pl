ao_lado(X, Y, L) :- nextto(X, Y, L) ; nextto(Y, X, L).

um_entre(X, Y, L) :- (nextto(X, N, L), nextto(N, Y, L)).

solucao(Avioes) :-
  Avioes = [aviao(cap_farfarelli,_,_,_,_),_,_,_,_], % lista com 5 elementos
  member(aviao(milton,vermelha,_,_,natacao), Avioes),
  member(aviao(walter,_,radio,_,_), Avioes),
  member(aviao(_,verde,_,_, pesca), Avioes),
  member(aviao(rui,_,_,_,futebol), Avioes),
  nextto(aviao(_,verde,_,_,_), aviao(_,branca,_,_,_), Avioes),
  member(aviao(_,_,altimetro,leite,_), Avioes),
  member(aviao(_,preta,_,cerveja,_), Avioes),
  ao_lado(aviao(_,_,_,cafe,_), aviao(_,_,hidraulico,_,_), Avioes),
  ao_lado(aviao(_,_,_,cerveja,_), aviao(_,_,bussula,_,_), Avioes),
  member(aviao(_,_,_,cha,equitação), Avioes),
  member(aviao(nascimento,_,_,agua,_), Avioes),
  ao_lado(aviao(cap_farfarelli,_,_,_,_), aviao(_,azul,_,_,_), Avioes),
  um_entre(aviao(_,_,hidraulico,_,_),aviao(_,_,altimetro,_,_),Avioes),
  member(aviao(_,_,_,_,tenis), Avioes),
  member(aviao(_,_,temperatura,_,_), Avioes).