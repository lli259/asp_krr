%uncaring john example

%Sam needs extra help to pass the class.
%You expect his father, John, to help him.


p(john;sam;alice).
father(john,sam).
mother(alice,sam).

parent(X,Y):-father(X,Y).
parent(X,Y):-mother(X,Y).
child(X,Y):-parent(Y,X).

cares(X,Y):-parent(X,Y).

%but John doesn't care about his son.
-cares(john,X):- child(X,john).

#show cares/2.

	






