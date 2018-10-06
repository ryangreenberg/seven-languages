plays(enya, piano).
plays(ringo_starr, piano).
plays(john_lennon, guitar).
plays(bob_dylan, guitar).
plays(phil_collins, drums).
plays(eric_clapton, guitar).
plays(alicia_keys, piano).
plays(taylor_swift, guitar).

genre(enya, new_age).
genre(ringo_starr, rock).
genre(john_lennon, rock).
genre(bob_dylan, folk).
genre(phil_collins, pop).
genre(eric_clapton, rock).
genre(alicia_keys, rnb).
genre(taylor_swift, pop).

%% | ?- ['prolog/musicians.pl'].
%% compiling /Users/ryan/Development/seven-languages/prolog/musicians.pl for byte code...
%% /Users/ryan/Development/seven-languages/prolog/musicians.pl compiled, 16 lines read - 1908 bytes written, 4 ms
%%
%% (1 ms) yes
%% | ?- plays(X, guitar).
%%
%% X = john_lennon ? a
%%
%% X = bob_dylan
%%
%% X = eric_clapton
%%
%% X = taylor_swift


%% I want to list all the instruments played by musicians
%% in a genre
%%
%% genre_plays(X) :- genre(Y, X), plays(Y, Z).
%% uncaught exception: error(existence_error(procedure,(:-)/2),top_level/0)
