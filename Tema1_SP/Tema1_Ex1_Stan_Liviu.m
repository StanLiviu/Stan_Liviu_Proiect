% a. Se va initializa a  ca vector linie cu elemente de la 0 pana la 2 cu pas
% 0.1 intre fiecare element
a = [0:0.1:2];

%{
a. Se va initializa b ca vector cu toate elementele egale cu 1 de marimea
lui a.
Ca inmultirea sa poata avea loc si sens vectorul b trebuie sa aiba aceeasi lungime ca 
vectorul linie a  
%}
b = ones(size(a));

% a. Voi transforma vectorul b intr-un vector coloana 
b = b(:);

% a. inmultind  a cu b vom obtine  un scalar  "dot product"
a*b

% b. inmultind  b cu a da vom obtine ca rezultat o matrice size(a) x size(a) numit
% "outer product"
b*a

% c. inmultind element cu element cei doi vectori rezulta o matrice
% size(a) x size(a) cu toate combinatiile elementelor multiplicate
(b*a)'