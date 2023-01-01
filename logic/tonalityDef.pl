isTonality([], _).
isTonality([X|R], Ton):- tonality(Ton, ListTon), member(X, ListTon), isTonality(R, Ton).