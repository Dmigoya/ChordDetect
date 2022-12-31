%Do Mayor
chordWithNotes('C', 'Do Mayor', ['C','E','G']).

%Re Mayor
chordWithNotes('D', 'Re Mayor', ['D','F#','A']).

%Mi Mayor
chordWithNotes('E', 'Mi Mayor', ['E','G#','B']).

%Fa Mayor
chordWithNotes('F', 'Fa Mayor', ['F','A','C']).

%Sol Mayor
chordWithNotes('G', 'Sol Mayor', ['G','B','D']).

%La Mayor
chordWithNotes('A', 'La Mayor', ['A','C#','E']).

%Si Mayor
chordWithNotes('B', 'Si Mayor', ['B','D#','F#']).

%Do Menor
chordWithNotes('Cm', 'Do Menor', ['C','D#','G']).

%Re Menor
chordWithNotes('Dm', 'Re Menor', ['D','F','A']).

%Mi Menor
chordWithNotes('Em', 'Mi Menor', ['E','G','B']).

%Fa Menor
chordWithNotes('Fm', 'Fa Menor', ['F','G#','C']).

%Sol Menor
chordWithNotes('Gm', 'Sol Menor', ['G','A#','D']).

%La Menor
chordWithNotes('Am', 'La Menor', ['A','C','E']).

%Si Menor
chordWithNotes('Bm', 'Si Menor', ['B','D','F#']).

%Do Septima
chordWithNotes('C7', 'Do Septima', ['C','E','G','Bb']).

%Re Septima
chordWithNotes('D7', 'Re Septima', ['D','F#','A','C']).

%Mi Septima
chordWithNotes('E7', 'Mi Septima', ['E','G#','B','D']).

%Fa Septima
chordWithNotes('F7', 'Fa Septima', ['F','A','C','D#']).

%Sol Septima
chordWithNotes('G7', 'Sol Septima', ['G','B','D','F']).

%La Septima
chordWithNotes('A7', 'La Septima', ['A','C#','E','G']).

%Si Septima
chordWithNotes('B7', 'Si Septima', ['B','D#','F#','A']).

%acordes sostenidos
chordWithNotes(Name, NameL, List2):- chord(Name, NameL), isSustain(Name), removeSustain(Name, Name2), chordWithNotes(Name2, _, List),
                                    addSustain(List, List2), !.
            
%acordes bemoles
chordWithNotes(Name, NameL, List2):- chord(Name, NameL), isFlat(Name), removeFlat(Name, Name2), chordWithNotes(Name2, _, List),
                                    addFlat(List, List2), !.

%Caso Base
chordWithNotes(_, _, []):- !.

%Caso Notas Desordenadas
chordWithNotes(Name, NameL, [X|R]):- chordWithNotes(Name, NameL, ListNote), member(X, ListNote), 
                                    chordWithNotes(Name, NameL, R),!.