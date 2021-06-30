tellStory([]).
tellStory(P) :- P = choose(L), random_member(M, L), tellStory(M).
tellStory(A) :- atomic(A), write(A), nl.
tellStory([H|T]) :- tellStory(H), tellStory(T).

go :-
  Story = ['Um vilão',Desenvolver],
  Desenvolver = [Motivação, Habilidade, Plano, Final],
  
  Motivação = [
    'depois', choose(['de sofrer bullying', 'de conhecer prolog', 'de ter visto sua família ser morta por um dragão', 'de ver sua amada ser morta por um amigo próximo']), 'e'],
    
  Habilidade = [
    choose(['ser treinado por grandes magos', 'descobrir poderes que ele tinha que jamais tinha visto antes', 'ter uma ideia extremamente genial', 'descobrir um artefato poderoso'])],
  Plano = [
    choose(['e decidir que a raça humana é corrupta', ['jura vingança contra', Criatura]])],
  Criatura = [
    choose(['os dragões', 'os elfos', 'os humanos', 'a natureza', 'o planeta'])],
  Final = [
    choose(['quer destruí-los', 'quer escravizá-los', 'quer trocar todos por ciborgues']), Método, Resultado],
  Método = [
    'através', choose(['da magia', 'de invenções', 'da violência', 'da morte', 'de um artefato poderoso'])],
  Resultado = [
    'porém, no final', choose(['todo mundo morre', ['um grupo de heróis luta contra o vilão e o derrota', Herói], 'um item mágico que ele usava é destruído e ele é derrotado'])],
  Herói = [
     'consulte o programa do Júlio para criar seu herói'],
  tellStory(Story),!.
    