-module(p10).
-export([encode/1]).

encode(List) -> encode(List, 1).
encode([], _) -> [];
encode([H, H | T], N) -> encode([H | T], N + 1);
encode([H | T], N) -> [{N, H} | encode(T, 1)].
