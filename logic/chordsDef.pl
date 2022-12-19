%Do Mayor
chordWithNotes(Name, NameL, ListNotas):- chord(Name, NameL), (Name='C'; NameL='Do Mayor'),ListNotas=['C','E','G'],!.
chordWithNotes(Name, NameL, [X|R]):- chord(Name, NameL), (Name='C'; NameL='Do Mayor'), member(X, ['C','E','G']), 
                                    chordWithNotes(Name, NameL, R),!.

%Re Mayor
chordWithNotes(Name, NameL, ListNotas):- chord(Name, NameL), (Name='D'; NameL='Re Mayor'),ListNotas=['D','F#','A'],!.
chordWithNotes(Name, NameL, [X|R]):- chord(Name, NameL), (Name='D'; NameL='Re Mayor'), member(X, ['D','F#','A']), 
                                    chordWithNotes(Name, NameL, R),!.

%Mi Mayor
chordWithNotes(Name, NameL, ListNotas):- chord(Name, NameL), (Name='E'; NameL='Mi Mayor'),ListNotas=['E','G#','B'],!.
chordWithNotes(Name, NameL, [X|R]):- chord(Name, NameL), (Name='E'; NameL='Mi Mayor'), member(X, ['E','G#','B']), 
                                    chordWithNotes(Name, NameL, R),!.

%Fa Mayor
chordWithNotes(Name, NameL, ListNotas):- chord(Name, NameL), (Name='F'; NameL='Fa Mayor'),ListNotas=['F','A','C'],!.
chordWithNotes(Name, NameL, [X|R]):- chord(Name, NameL), (Name='F'; NameL='Fa Mayor'), member(X, ['F','A','C']), 
                                    chordWithNotes(Name, NameL, R),!.

%Sol Mayor
chordWithNotes(Name, NameL, ListNotas):- chord(Name, NameL), (Name='G'; NameL='Sol Mayor'),ListNotas=['G','B','D'],!.
chordWithNotes(Name, NameL, [X|R]):- chord(Name, NameL), (Name='G'; NameL='Sol Mayor'), member(X, ['G','B','D']), 
                                    chordWithNotes(Name, NameL, R),!.

%La Mayor
chordWithNotes(Name, NameL, ListNotas):- chord(Name, NameL), (Name='A'; NameL='La Mayor'),ListNotas=['A','C#','E'],!.
chordWithNotes(Name, NameL, [X|R]):- chord(Name, NameL), (Name='A'; NameL='La Mayor'), member(X, ['A','C#','E']), 
                                    chordWithNotes(Name, NameL, R),!.

%Si Mayor
chordWithNotes(Name, NameL, ListNotas):- chord(Name, NameL), (Name='B'; NameL='Si Mayor'),ListNotas=['B','D#','F#'],!.
chordWithNotes(Name, NameL, [X|R]):- chord(Name, NameL), (Name='B'; NameL='Si Mayor'), member(X, ['B','D#','F#']), 
                                    chordWithNotes(Name, NameL, R),!.

%Do Menor
chordWithNotes(Name, NameL, ListNotas):- chord(Name, NameL), (Name='Cm'; NameL='Do Menor'),ListNotas=['C','D#','G'],!.
chordWithNotes(Name, NameL, [X|R]):- chord(Name, NameL), (Name='Cm'; NameL='Do Menor'), member(X, ['C','D#','G']), 
                                    chordWithNotes(Name, NameL, R),!.

%Re Menor
chordWithNotes(Name, NameL, ListNotas):- chord(Name, NameL), (Name='Dm'; NameL='Re Menor'),ListNotas=['D','F','A'],!.
chordWithNotes(Name, NameL, [X|R]):- chord(Name, NameL), (Name='Dm'; NameL='Re Menor'), member(X, ['D','F','A']), 
                                    chordWithNotes(Name, NameL, R),!.

%Mi Menor
chordWithNotes(Name, NameL, ListNotas):- chord(Name, NameL), (Name='Em'; NameL='Mi Menor'),ListNotas=['E','G','B'],!.
chordWithNotes(Name, NameL, [X|R]):- chord(Name, NameL), (Name='Em'; NameL='Mi Menor'), member(X, ['E','G','B']), 
                                    chordWithNotes(Name, NameL, R),!.

%Fa Menor
chordWithNotes(Name, NameL, ListNotas):- chord(Name, NameL), (Name='Fm'; NameL='Fa Menor'),ListNotas=['F','G#','C'],!.
chordWithNotes(Name, NameL, [X|R]):- chord(Name, NameL), (Name='Fm'; NameL='Fa Menor'), member(X, ['F','G#','C']), 
                                    chordWithNotes(Name, NameL, R),!.

%Sol Menor
chordWithNotes(Name, NameL, ListNotas):- chord(Name, NameL), (Name='Gm'; NameL='Sol Menor'),ListNotas=['G','A#','D'],!.
chordWithNotes(Name, NameL, [X|R]):- chord(Name, NameL), (Name='Gm'; NameL='Sol Menor'), member(X, ['G','A#','D']), 
                                    chordWithNotes(Name, NameL, R),!.

%La Menor
chordWithNotes(Name, NameL, ListNotas):- chord(Name, NameL), (Name='Am'; NameL='La Menor'),ListNotas=['A','C','E'],!.
chordWithNotes(Name, NameL, [X|R]):- chord(Name, NameL), (Name='Am'; NameL='La Menor'), member(X, ['A','C','E']), 
                                    chordWithNotes(Name, NameL, R),!.

%Si Menor
chordWithNotes(Name, NameL, ListNotas):- chord(Name, NameL), (Name='Bm'; NameL='Si Menor'),ListNotas=['B','D','F#'],!.
chordWithNotes(Name, NameL, [X|R]):- chord(Name, NameL), (Name='Bm'; NameL='Si Menor'), member(X, ['B','D','F#']), 
                                    chordWithNotes(Name, NameL, R),!.

%Do Septima
chordWithNotes(Name, NameL, ListNotas):- chord(Name, NameL), (Name='C7'; NameL='Do Septima'),ListNotas=['C','E','G','Bb'],!.
chordWithNotes(Name, NameL, [X|R]):- chord(Name, NameL), (Name='C7'; NameL='Do Septima'), member(X, ['C','E','G','Bb']), 
                                    chordWithNotes(Name, NameL, R),!.

%Re Septima
chordWithNotes(Name, NameL, ListNotas):- chord(Name, NameL), (Name='D7'; NameL='Re Septima'),ListNotas=['D','F#','A','C'],!.
chordWithNotes(Name, NameL, [X|R]):- chord(Name, NameL), (Name='D7'; NameL='Re Septima'), member(X, ['D','F#','A','C']), 
                                    chordWithNotes(Name, NameL, R),!.

%Mi Septima
chordWithNotes(Name, NameL, ListNotas):- chord(Name, NameL), (Name='E7'; NameL='Mi Septima'),ListNotas=['E','G#','B','D'],!.
chordWithNotes(Name, NameL, [X|R]):- chord(Name, NameL), (Name='E7'; NameL='Mi Septima'), member(X, ['E','G#','B','D']), 
                                    chordWithNotes(Name, NameL, R),!.

%Fa Septima
chordWithNotes(Name, NameL, ListNotas):- chord(Name, NameL), (Name='F7'; NameL='Fa Septima'),ListNotas=['F','A','C','D#'],!.
chordWithNotes(Name, NameL, [X|R]):- chord(Name, NameL), (Name='F7'; NameL='Fa Septima'), member(X, ['F','A','C','D#']),
                                    chordWithNotes(Name, NameL, R),!.

%Sol Septima
chordWithNotes(Name, NameL, ListNotas):- chord(Name, NameL), (Name='G7'; NameL='Sol Septima'),ListNotas=['G','B','D','F'],!.
chordWithNotes(Name, NameL, [X|R]):- chord(Name, NameL), (Name='G7'; NameL='Sol Septima'), member(X, ['G','B','D','F']), 
                                    chordWithNotes(Name, NameL, R),!.

%La Septima
chordWithNotes(Name, NameL, ListNotas):- chord(Name, NameL), (Name='A7'; NameL='La Septima'),ListNotas=['A','C#','E','G'],!.
chordWithNotes(Name, NameL, [X|R]):- chord(Name, NameL), (Name='A7'; NameL='La Septima'), member(X, ['A','C#','E','G']),
                                    chordWithNotes(Name, NameL, R),!.

%Si Septima
chordWithNotes(Name, NameL, ListNotas):- chord(Name, NameL), (Name='B7'; NameL='Si Septima'),ListNotas=['B','D#','F#','A'],!.
chordWithNotes(Name, NameL, [X|R]):- chord(Name, NameL), (Name='B7'; NameL='Si Septima'), member(X, ['B','D#','F#','A']),
                                    chordWithNotes(Name, NameL, R),!.

%acordes sostenidos
chordWithNotes(Name, NameL, List2):- chord(Name, NameL), isSustain(Name), removeSustain(Name, Name2), chordWithNotes(Name2, _, List),
                                    addSustain(List, List2), !.
            
%acordes bemoles
chordWithNotes(Name, NameL, List2):- chord(Name, NameL), isFlat(Name), removeFlat(Name, Name2), chordWithNotes(Name2, _, List),
                                    addFlat(List, List2), !.