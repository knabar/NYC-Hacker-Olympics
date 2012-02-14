-module(decode).
-export([decode/1]).

decode(Code) -> convert(process(Code)).

process(Code)                            -> process(Code, [], []).
process([], Unique, _)                   -> Unique;
process([X, Y|Code], Unique, Duplicates) ->
    Pair = {X, Y},
    IsDuplicate = lists:member(Pair, Duplicates),
    IsUnique = lists:member(Pair, Unique),
    process_pair(Pair, IsDuplicate, IsUnique, Code, Unique, Duplicates).

process_pair(_, true, _, Code, Unique, Duplicates) ->
    process(Code, Unique, Duplicates);
process_pair(Pair, _, true, Code, Unique, Duplicates) ->
    process(Code, lists:delete(Pair, Unique), [Pair|Duplicates]);
process_pair(Pair, _, _, Code, Unique, Duplicates) ->
    process(Code, [Pair|Unique], Duplicates).

convert(List)               -> convert(List, []).
convert([], Result)         -> lists:concat(Result);
convert([{X, Y}|T], Result) -> convert(T, [cchar(X) + cchar(Y)|Result]).

cchar(C)           -> cchar(C, 0, "qwertyuiop").
cchar(C, I, [C|_]) -> I;
cchar(C, I, [_|T]) -> cchar(C, I + 1, T).

