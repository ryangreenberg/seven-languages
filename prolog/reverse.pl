%% Reverse the elements of a list.
%% I'm sure this involves head and tail
%% The reserve of a list is the reverse of the tail followed by the head.
reverse([], []).
reverse([Head|Tail], [reverse(Tail), Head]).

%% | ?- reverse(What, []).
%%
%% What = []
%%
%% yes
%% | ?- reverse([1], What).
%%
%% What = [1]
%%
%% yes
%% | ?- reverse([1, 2], What).
%%
%% What = [2,1]
%%
%% yes
%% | ?- reverse([1, 2, 3], What).
%%
%% What = [3,2,1]

%% Find the smallest element of a list.
