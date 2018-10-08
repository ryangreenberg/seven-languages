%% The smallest element of a list is the element where there is no other
%% element that is smaller.

%% smallest(Element, List).
%% smallest(Head, [Head]).
%% smallest(X, [X]).

%% smallest(X, [Head|Tail]). :- element(X, [Head|Tail]), 


%% semicolon means OR?
%% From https://stackoverflow.com/questions/4115021
%% but this outputs "true" when checked; not sure if that matters
%% element(X, [Head|Tail]) :- (X = Head); element(X, Tail).
%%
%% element(X, [Head|Tail]) :- (X = Head).
%% element(X, [Head|Tail]) :- element(X, Tail).
element(X, [Head|Tail]) :- (X = Head); element(X, Tail).

%% I think this is already implemented in Prolog as "member"

%% smallest(X, [X]). forall*

smallest(X, List) :- member(X, List), forall(member(N, List), N >= X).