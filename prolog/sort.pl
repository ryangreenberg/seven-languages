%% Sort the elements of a list.
%% A list is sorted when every element is less than or equal to
%% the next element
sorted(List, SortedList)

smallest(X, List) :- member(X, List), forall(member(N, List), N >= X).

sorted([Head|Tail], [X,Tail]) :- smallest(X, [Head, Tail]), sorted(Tail,) ?

%% It's interesting that so many sort algorithms are expressible
%% in Prolog, which is often described as *not* having to express
%% how the computer will solve the problem.
%% 
%% See http://kti.ms.mff.cuni.cz/~bartak/prolog/sorting.html