% 1. multiple of 3
multof3(A) :- 
    \+ number(A),
    write("Error input not an integer"),
    !.

multof3(A) :-
    integer(A),
    0 is mod(A,3),
    !.

% 2. Minimum
%min2 gets the minimum of 2 numbers N1, N2
min2(N1, N2, Number) :-
    number(N1),
    number(N2),
    (N1 =< N2), 
    Number is N1,
    !.

min2(N1, N2, Number) :-
   	number(N1),
    number(N2),
    (N2 < N1),
    Number is N2.

minim([H|[]],H).  %single element list is the min

minim([H|T],Min) :-
    minim(T, Number), %min of the rest of the lest
    min2(Number, H, Min). %minimum of the Head and current Min

minim([H|_],_) :-
    \+ number(H),
  	writef("Error %s is not a number",[H]),
    !.

% 3. Prime Functions
is_prime(X) :-
    \+ divisible(X,2).    
is_prime(2) :- true, !. 
divisible(X,Y) :- %X is divisble by Y
    0 is X mod Y, !.
divisible(X,Y) :-
    Y < sqrt(X),
    divisible(X,Y + 1). %currently checks all numbers from 2-sqrt(X)


% 4. Segregate Lists
segregate([],[],[]). %base case
segregate([Head|Tail], [Head|Evens], Odds) :-
    0 is Head mod 2,
    segregate(Tail,Evens,Odds).

segregate([Head|Tail], Evens, [Head|Odds]) :-
    1 is Head mod 2,
    segregate(Tail,Evens,Odds).

% 5. Summing Lists
sum_list([], 0).

sum_list([Head | Tail], Sum) :-
    sum_list(Tail, Rest),
    write(Rest),
    Sum is Head + Rest.

% 6. Product list
prod_list([],0).

prod_list([H],Product) :- 
    Product is H,
    !.

prod_list([H|T], Product) :-
    prod_list(T, Rest),
    Product is H * Rest.


% 7. Bookends
%custom reverse and prefix defined if needed
%prefix([],_). %empty is always a prefix
%prefix([H|T],[H|T2]) :-
%    prefix(T,T2). %if the first element is the same check the rest

%reverse([],[]). %custom reverse 
%reverse([H|T],Reversed) :-
%    reverse(T,RT),
%    append(RT,[H],Reversed).
 
%suffix reverse lists check for prefix
suffix(Suf,L) :- 
    reverse(Suf,SufR), 
    reverse(L,LR), 
    prefix(SufR,LR).

bookends(Pre,Suf,L) :-
    prefix(Pre,L),
    suffix(Suf,L).

% 8. Subslice
subslice([],_). %empty list is subslice of anything

subslice([H|T],[H|T2]) :-
        prefix(T,T2), %slice is a prefix of the rest of the list
        !.
subslice(L,[_|T2]) :-
    subslice(L,T2). %slice could occur later in the list
    
% 9. Graph
edge(a,b).
edge(b,c).
edge(c,d).
edge(d,a).
edge(d,e).
edge(b,a).


path(X,Y) :-  edge(X, Y), !. %trivial path

path(X,Y) :-  
    path(X,Z), 
    edge(Z,Y).
 
cycle(X) :-
    path(X,X).
	
% 10. Clue 
married(X,Y) :-
    is_married(X,Y);
    is_married(Y,X).

affair(X,Y) :-
    in_affair(X,Y);
    in_affair(Y,X).

hate(Killer, Victim) :-
    married(Killer, Person),
    affair(Person, Victim).

greed(Killer, Victim) :-
    greedy(Killer),
    \+ rich(Killer),
    rich(Victim).

suspect(Killer, Victim) :- %Part B
    hate(Killer, Victim);
	greed(Killer, Victim).

%given facts unique fact is labled
is_married(profPlum, msGreen).
in_affair(mrBoddy,msGreen).
in_affair(missScarlet, mrBoddy).
greedy(colMustard).
rich(mrBoddy).
%rich(colMustard). %unique fact for part C 