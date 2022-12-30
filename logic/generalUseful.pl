%transformar un string a una lista de caracteres
stringToList(String, List):- string_chars(String, List).

%crear una regla string_split para separar las palabras de un string y devolver una lista de strings
string_split(String, List):- split_string(String, ' ', '', List).

%tomar primer elemento de la lista
getFirstToList([X|_], X).