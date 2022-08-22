es_perro(cloe).
es_perro(firulais).
es_perro(dark).
es_gato(canela).
es_pollito(rostizado).

amigos(cloe,dark).
amigos(canela,rostizado).
amigos(firulais,dark).

%Voy a adoptar un perro Y un gato
regla_and(A,B):-es_perro(A),es_gato(B).
%Voy a adoptar a un perro O un gato
regla_or(A,B):-es_perro(A),!;es_gato(B).
%Voy a adoptar un par de amigos que no sean del albergue
regla_not(A,B):-amigos(A,B),!,false;true.