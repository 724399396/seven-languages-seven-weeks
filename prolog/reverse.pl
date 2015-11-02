reverse([],[]).
reverse([H|T],Res) :- reverse(T,Rev), append(Rev,[H], Res).

list_min([H|T],MIN) :-
    list_min(T,H,MIN).
list_min([],MIN,MIN).
list_min([L|LS],MIN0,MIN) :-
    MIN1 is min(L, MIN0),
    list_min(LS, MIN1, MIN).

quick_sort2(List,Sorted) :- q_sort(List,[],Sorted).
q_sort([], Acc, Acc).
q_sort([H|T], Acc, Sorted) :-
    pivoting(H,T,L1,L2),
    q_sort(L1, Acc, Sorted1), q_sort(L2,[H|Sorted1], Sorted)
