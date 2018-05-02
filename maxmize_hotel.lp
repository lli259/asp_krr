{hotel(1..2)}=1.
cost(1,2).
cost(2,5).
%only maximize Y. 
%X is parameter to choose Y
%but we need to write it here.
#maximize{Y,X:hotel(X),cost(X,Y)}.

%zcost(X):-cost(Y,X),hotel(Y).
%#maximize{Y:zcost(Y)}.

#show hotel/1.
