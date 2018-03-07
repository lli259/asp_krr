%uncaring john example

%Sam needs extra help to pass the class.
%You expect his father, John, to help him.


person(john;sam;alice).
father(john,sam).
mother(alice,sam).

parent(X,Y):-father(X,Y).
parent(X,Y):-mother(X,Y).
child(X,Y):-parent(Y,X).

%cares(X,Y):-parent(X,Y).

%but John doesn't care about his son.
-cares(john,X):- child(X,john).

%then this causes inconsistency.

%----------------------------------------------------
%	p(X) <-   c(X), not ab(d(X)), not -p(X). 
%		if X maybe normal one with respect to d, 
%		p(x) may be true.
%		john is abnormal.
%--------------------------------------------------

cares(X,Y):-parent(X,Y), not ab(d_cares(X,Y)), not -cares(X,Y).
%cares(X,Y):-parent(X,Y),  not -cares(X,Y).
%because the ab() can add more information. AND not ab is default logic.
%every body cares, except abnormal, and -care.

%weak exception e(X).
%ab(d(X)) :- not -e(X).
%if it maybe an exception, it is abnormal ,and doesn't have p.
%everything is abnormal, except -e.
%only -e has cares.

%strong exception e(X). add one more rule:
%-p(X) :- e(X).
%if it is exception, it doesn't have p
%only -e(X) has p.

%weak excption: 
%if parent has never been seen at school, don't apply care.
%test:
%-absent(alice).   -> care
%absent(alice).    -> unknown
%unknown           -> unknown
%cares(alice,sam).
%-cares(alice,sam).

-absent(alice).
ab(d_cares(P,C)) :-person(P), person(C), not -absent(P).



#show cares/2.

	






