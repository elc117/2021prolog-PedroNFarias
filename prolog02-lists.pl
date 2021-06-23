/1. Defina um predicado ao_lado(X, Y, L) para determinar se X 
está imediatamente ao lado de Y na lista L. Neste caso, 
X pode estar imediatamente à esquerda OU à direita de Y. */

ao_lado(X, Y, L) :- nextto(X, Y, L) ; nextto(Y, X, L).

/2. Defina um predicado um_entre(X, Y, L) para determinar se os elementos 
 X e Y da lista L estão separados por exatamente um elemento.*/

um_entre(X, Y, L) :- (nextto(X, N, L), nextto(N, Y, L)).
um_entre(X, Y, L) :- (nextto(Y, N, L), nextto(N, X, L)).