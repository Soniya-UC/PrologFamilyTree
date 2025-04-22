%  BASIC FACTS 

% Gender

male(venkat).
male(dheeraj).
male(rohit).
male(kiran).
male(ramu).

female(sunita).
female(nisha).
female(preethi).
female(anusha).
female(sreeja).


% Parent relationships parent(X, Y) relation means "X is a parent of Y".
parent(venkat, dheeraj).
parent(venkat, nisha).
parent(sunita, dheeraj).
parent(sunita, nisha).

parent(dheeraj, rohit).
parent(sreeja, rohit).
parent(dheeraj, preethi).
parent(sreeja, preethi).

parent(nisha, kiran).
parent(ramu, kiran).
parent(nisha, anusha).
parent(ramu, anusha).

% Derived Relationships Using Rules 

% Grandparent: X is grandparent of Y
grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

% Sibling: X and Y are siblings
sibling(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    X \= Y.

% Cousin: X and Y are cousins
cousin(X, Y) :-
    parent(P1, X),
    parent(P2, Y),
    sibling(P1, P2),
    X \= Y.

% Child: X is a child of Y
child(X, Y) :-
    parent(Y, X).

% Descendant: X is a descendant of Y
descendant(X, Y) :-
    parent(Y, X).

descendant(X, Y) :-
    parent(Y, Z),
    descendant(X, Z).
