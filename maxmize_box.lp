value(1..3).

%z(X):-value(X). %this won't here.

%we should give some model candidates so that solver
%will remember the solutions and find one for us.
{z(X):-value(X)}.
#minimize{Y:z(Y)}.
#show z/1.

%minimize
%===
%#minimize{I:occurs(Action,I)}.
%===
numb(X):- X=#count{K:occurs(_,K)}.
#minimize{X:numb(X)}.
%===
