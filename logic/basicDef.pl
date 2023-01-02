%crear un reconocedor para acordes
chord('C', 'Do Mayor').
chord('D', 'Re Mayor').
chord('E', 'Mi Mayor').
chord('F', 'Fa Mayor').
chord('G', 'Sol Mayor').
chord('A', 'La Mayor').
chord('B', 'Si Mayor').
chord('Cm', 'Do Menor').
chord('Dm', 'Re Menor').
chord('Em', 'Mi Menor').
chord('Fm', 'Fa Menor').
chord('Gm', 'Sol Menor').
chord('Am', 'La Menor').
chord('Bm', 'Si Menor').
chord('C7', 'Do Septima').
chord('D7', 'Re Septima').
chord('E7', 'Mi Septima').
chord('F7', 'Fa Septima').
chord('G7', 'Sol Septima').
chord('A7', 'La Septima').
chord('B7', 'Si Septima').

%crear un reconocedor para acordes sostenidos
chord('C#', 'Do Sostenido Mayor').
chord('D#', 'Re Sostenido Mayor').
chord('F#', 'Fa Sostenido Mayor').
chord('G#', 'Sol Sostenido Mayor').
chord('A#', 'La Sostenido Mayor').
chord('C#m', 'Do Sostenido Menor').
chord('D#m', 'Re Sostenido Menor').
chord('F#m', 'Fa Sostenido Menor').
chord('G#m', 'Sol Sostenido Menor').
chord('A#m', 'La Sostenido Menor').
chord('C#7', 'Do Sostenido Septima').
chord('D#7', 'Re Sostenido Septima').
chord('F#7', 'Fa Sostenido Septima').
chord('G#7', 'Sol Sostenido Septima').
chord('A#7', 'La Sostenido Septima').

%crear un reconocedor para acordes bemoles
chord('Db', 'Re Bemol Mayor').
chord('Eb', 'Mi Bemol Mayor').
chord('Gb', 'Sol Bemol Mayor').
chord('Ab', 'La Bemol Mayor').
chord('Bb', 'Si Bemol Mayor').
chord('Dbm', 'Re Bemol Menor').
chord('Ebm', 'Mi Bemol Menor').
chord('Gbm', 'Sol Bemol Menor').
chord('Abm', 'La Bemol Menor').
chord('Bbm', 'Si Bemol Menor').
chord('Db7', 'Re Bemol Septima').
chord('Eb7', 'Mi Bemol Septima').
chord('Gb7', 'Sol Bemol Septima').
chord('Ab7', 'La Bemol Septima').
chord('Bb7', 'Si Bemol Septima').

%crear un reconocedor para notas
note('C', 'Do').
note('D', 'Re').
note('E', 'Mi').
note('F', 'Fa').
note('G', 'Sol').
note('A', 'La').
note('B', 'Si').

%crear un reconocedor para notas sostenidas
note('C#', 'Do Sostenido').
note('D#', 'Re Sostenido').
note('F#', 'Fa Sostenido').
note('G#', 'Sol Sostenido').
note('A#', 'La Sostenido').

%crear un reconocedor para notas bemoles
note('Db', 'Re Bemol').
note('Eb', 'Mi Bemol').
note('Gb', 'Sol Bemol').
note('Ab', 'La Bemol').
note('Bb', 'Si Bemol').

%Definir tonalidades mayores
tonality('C', ['C','Dm','Em','F','G','Am','Bdim']).
tonality('D', ['D','Em','F#m','G','A','Bm','C#dim']).
tonality('E', ['E','F#m','G#m','A','B','C#m','D#dim']).
tonality('F', ['F','Gm','Am','Bb','C','Dm','Edim']).
tonality('G', ['G','Am','Bm','C','D','Em','F#dim']).
tonality('A', ['A','Bm','C#m','D','E','F#m','G#dim']).
tonality('B', ['B','C#m','D#m','E','F#','G#m','A#dim']).

%Definir tonalidades menores
tonality('Cm', ['Cm','Ddim','Eb','Fm','Gm','Ab','Bb']).
tonality('Dm', ['Dm','Edim','F','Gm','Am','Bb','C']).
tonality('Em', ['Em','F#dim','G','Am','Bm','C','D']).
tonality('Fm', ['Fm','Gdim','Ab','Bbm','Cm','Db','Eb']).
tonality('Gm', ['Gm','Adim','Bb','Cm','Dm','Eb','F']).
tonality('Am', ['Am','Bdim','C','Dm','Em','F','G']).
tonality('Bm', ['Bm','C#dim','D','Em','F#m','G','A']).

%Definir tonalidad cromatica
tonality('Cromatica Mayor Con Sostenido', ['C','C#','D','D#','E','F','F#','G','G#','A','A#','B']).
tonality('Cromatica Menor Con Sostenido', ['Cm','C#dim','Dm','D#dim','Em','Fm','F#dim','Gm','G#dim','Am','A#dim','Bm']).
tonality('Cromatica Septima Con Sostenido', ['C7','C#7','D7','D#7','E7','F7','F#7','G7','G#7','A7','A#7','B7']).
tonality('Cromatica Mayor Con Bemol', ['C','Db','D','Eb','E','F','Gb','G','Ab','A','Bb','B']).
tonality('Cromatica Menor Con Bemol', ['Cm','Dbm','Dm','Ebm','Em','Fm','Gbm','Gm','Abm','Am','Bbm','Bm']).
tonality('Cromatica Septima Con Bemol', ['C7','Db7','D7','Eb7','E7','F7','Gb7','G7','Ab7','A7','Bb7','B7']).

chords(['C','C#','D','D#','E','F','F#','G','G#','A','A#','B',
        'Cm','C#dim','Dm','D#dim','Em','Fm','F#dim','Gm','G#dim','Am','A#dim','Bm',
        'C7','C#7','D7','D#7','E7','F7','F#7','G7','G#7','A7','A#7','B7',
        'Db','Eb','Gb','Ab','Bb',
        'Dbm','Ebm','Gbm','Abm','Bbm', 
        'Db7','Eb7','Gb7','Ab7','Bb7']).