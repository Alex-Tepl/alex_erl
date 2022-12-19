-module(p04).
-export([len/1]).

len(List) -> len(List, 0).
len([H | T], N) -> len(T, N + 1);
len([], N) -> N.
