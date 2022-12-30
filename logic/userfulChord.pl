%Dada la tonalidad y un acorde devolver el grado del acorde en la tonalidad
degreeInTonality(Tonality, Chord, Degree):- tonality(Tonality, ListChords), member(Chord, ListChords), 
                                            nth1(Degree, ListChords, Chord),!.

%reconocer si un acorde es sostenido
isSustain(Chord):- stringToList(Chord, List), member(#, List).

%reconocer si un acorde es bemol
isFlat(Chord):- stringToList(Chord, List), member(b, List).

%quitar el # a un String
removeSustain(Chord, ChordL):- stringToList(Chord, List), delete(List, #, List2), getFirstToList(List2, ChordL).

%quitar el b a un String
removeFlat(Chord, ChordL):- stringToList(Chord, List), delete(List, b, List2), getFirstToList(List2, ChordL).

%dada una lista de notas aumentar un semitono a cada una
addSustain([], []).
addSustain([X|L], [X2|L2]):- degreeInTonality('Cromatica', X, Degree), Degree2 is Degree + 1, Degree2=<12,
                            degreeInTonality('Cromatica', X2, Degree2), addSustain(L, L2);
                            degreeInTonality('Cromatica', X2, 1), addSustain(L, L2).

%dada una lista de notas disminuir un semitono a cada una
addFlat([], []).
addFlat([X|L], [X2|L2]):- degreeInTonality('Cromatica', X, Degree), Degree2 is Degree - 1, Degree2>=1,
                        degreeInTonality('Cromatica', X2, Degree2), addFlat(L, L2);
                        degreeInTonality('Cromatica', X2, 12), addFlat(L, L2).
