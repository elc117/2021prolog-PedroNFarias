tellStory([]).
tellStory(P) :- P = choose(L), random_member(M, L), tellStory(M).
tellStory(A) :- atomic(A), write(A), nl.
tellStory([H|T]) :- tellStory(H), tellStory(T).

go :-
  Story = ['Um vilão',Desenvolver],
  Desenvolver = [Motivação, Habilidade, Plano, Final],
  
  Motivação = [
    'depois', choose(['de sofrer bullying', 'de conhecer prolog', 'de ter visto sua família morrer para um dragão']), 'e'],
    
  Habilidade = [
    choose(['ser treinado por grandes magos', 'descobrir poderes que ele tinha que jamais tinha visto antes', 'ter uma ideia extremamente genial'])],
  Plano = [
    choose(['e decidir que a raça humana é corrupta', ['jura vingança contra', Criatura]])],
  Criatura = [
    choose(['os dragões', 'os elfos', 'os humanos', 'a natureza', 'o planeta'])],
  Final = [
    choose(['quer destruí-los', 'quer escravizá-los', 'quer trocar todos por ciborgues']), Método, Resultado],
  Método = [
    'através', choose(['da magia', 'de invenções', 'da violência', 'da morte'])],
  Resultado = [
    'porém, no final', choose(['todo mundo morre', ['um grupo de heróis luta contra o vilão e o derrota', Herói]])],
  Herói = [
     'consulte o programa do Júlio para criar seu herói'],
  tellStory(Story),!.
    