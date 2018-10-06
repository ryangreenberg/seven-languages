author(alice_walker).
author(john_steinbeck).
author(ursula_k_le_guin).
wrote(alice_walker, the_color_purple).
wrote(alice_walker, the_third_life_of_grance_copeland).
wrote(alice_walker, meridian).
wrote(john_steinbeck, grapes_of_wrath).
wrote(john_steinbeck, of_mice_and_men).
wrote(john_steinbeck, east_of_eden).
wrote(ursula_k_le_guin, the_left_hand_of_darkness).
wrote(ursula_k_le_guin, a_wizard_of_earthsea).
wrote(ursula_k_le_guin, the_dispossessed).

%% gprolog
%% GNU Prolog 1.4.5 (64 bits)
%% Compiled Jul 14 2018, 19:58:18 with clang
%% By Daniel Diaz
%% Copyright (C) 1999-2018 Daniel Diaz
%% | ?- ['prolog/books.pl'].
%% compiling /Users/ryan/Development/seven-languages/prolog/books.pl for byte code...
%% /Users/ryan/Development/seven-languages/prolog/books.pl compiled, 11 lines read - 1738 bytes written, 6 ms
%%
%% (1 ms) yes
%% | ?- author(X)
%% .
%%
%% X = alice_walker ? a
%%
%% X = john_steinbeck
%%
%% X = ursula_k_le_guin
%%
%% yes
%% | ?- wrote(alice_walker, X).
%%
%% X = the_color_purple ? a
%%
%% X = the_third_life_of_grance_copeland
%%
%% X = meridian
%%
%% yes
