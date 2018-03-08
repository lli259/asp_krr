%
%normally, students are afraid of math.
%m is not
%in math department not
%in cs may or may not


student(d;m;b;p).
dept(eng;cs;math).
in(d,eng).
in(m,cs).
in(b,cs).
in(p,math).

-in(S,D1) :-dept(D1),in(S,D2),D1!=D2.

afraid(S,math):- student(S),not ab(d(S)), not -afraid(S,math).

-afraid(m,math).
ab(d(m)). % not necessary, can be removed.

-afraid(S,math) :-  in(S,math).
ab(d(S)) :- student(S), not -in(S,math).

ab(d(S)) :- student(S), not -in(S,cs).

%afraid(d,math)? yes
%afraid(m,math)? no
%afraid(p,math)? no
%afraid(b,math)? unknown 

student(jake).
%afraid(jake,math)?
#show afraid/2.
