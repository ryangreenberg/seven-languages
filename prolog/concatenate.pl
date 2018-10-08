%% rule such that L1 + L2 = L3
%% [] + [X] = [X]
concatenate([], List, List).

%% This does not enforce any particular datatype:
%% | ?- concatenate([], 5, 5).

%% yes

concatenate([Head|[]], List, [Head|List]).