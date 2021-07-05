mulher(catherine;alice;barbara).
homem(edward;david;frank).

solucao(Comodos):-
  Comodos = [_,_,_,_,_,_], % lista com 6 elementos [nome,comodo,arma]
  (member(comodo(alice,escritorio,_),Comodos);
  member(comodo(alice,banheiro,_),Comodos)),
  not(member(comodo(_,cozinha,saco_plastico),Comodos)),
  not(member(comodo(_,cozinha,corda),Comodos)),
  not(member(comodo(_,cozinha,smartphone),Comodos)),
  not(member(comodo(_,cozinha,travesseiro),Comodos)),
  not(member(comodo(alice,_,saco_plastico),Comodos)),
  not(member(comodo(edward,_,saco_plastico),Comodos)),
  not(member(comodo(_,banheiro,saco_plastico),Comodos)),
  not(member(comodo(_,sala_de_jantar,saco_plastico),Comodos)),
  member(comodo(mulher,escritorio,corda),Comodos),
  (member(comodo(david,sala_de_estar,_),Comodos);
  member(comodo(edward,sala_de_estar,_),Comodos)),
  not(member(comodo(_,sala_de_jantar,smartphone),Comodos)),
  (not(member(comodo(catherine,despensa,_),Comodos));
  not(member(comodo(catherine,escritorio,_),Comodos))),
  member(comodo(edward,_,travesseiro),Comodos),
  member(comodo(_,despensa,gas),Comodos).