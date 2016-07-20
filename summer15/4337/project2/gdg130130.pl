multof3(A) :- 
    \+ integer(A),
    write("ERROR: The given parameter is not an integer"),
    !.

multof3(A) :-
    integer(A),
    0 is mod(A,3),
    !.


%infinite loop

