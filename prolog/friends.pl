likes(wallace, cheese).
likes(grommit, cheese).
likes(wendolene, sheep).
friend(X, Y) :- \+(X = Y), likes(X, Z), likes(Y, Z).

%% gprolog
%% GNU Prolog 1.4.5 (64 bits)
%% Compiled Jul 14 2018, 19:58:18 with clang
%% By Daniel Diaz
%% Copyright (C) 1999-2018 Daniel Diaz
%% | ?- ['prolog/friends'].
%% compiling /Users/ryan/Development/seven-languages/prolog/friends.pl for byte code...
%% /Users/ryan/Development/seven-languages/prolog/friends.pl compiled, 4 lines read - 989 bytes written, 4 ms
%%
%% yes
%% | ?- likes(wallace, sheep).
%%
%% no
%% | ?- likes(wallace, cheese).
%%
%% yes
%% | ?- friend(wallace, wallace).
%%
%% no
%% | ?- friend(wallace, grommit).
%%
%% yes
