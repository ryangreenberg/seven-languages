-module(simple_math).
-export([factorial/1]).
-export([fib/1]).

% factorial(2000) runs almost instantly, but fib(200) hangs. Why?
factorial(0) -> 1;
factorial(N) -> N * factorial(N-1).

fib(0) -> 1;
fib(1) -> 1;
fib(N) -> fib(N-1) + fib(N-2).
