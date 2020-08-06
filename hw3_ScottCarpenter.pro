collects(ashley, stamps).
collects(ashley, coins).
collects(carol, figurines).
collects(carol, stamps).

sells(beth, X, ashley) :- collects(ashley,X).
sells(dan, X, carol) :- collects(carol, X).

in(tom, csc401).
in(lexi, csc311).
in(harry, csc401).
in(mary, csc401).
in(mary, csc311).

classmates(X,Y) :- in(X,Z), in(Y,Z).

team(1, astros, soccer).
team(2, bears, baseball).
team(3, jays, football).
team(4, tigers, soccer).
team(5, twins, baseball).
team(6, redwings, football).

field(f1, nicepark, 10).
field(f2, grassfield, 5).
field(f3, swamp, 2).
field(f4, theturf, 20).

practice(1, f1, tuesday).
practice(2, f2, wednesday).
practice(3, f1, monday).
practice(4, f2, thursday).
practice(6, f1, wednesday).
practice(1, f2, tuesday).
practice(2, f1, wednesday).
practice(3, f2, thursday).
practice(4, f1, monday).
practice(6, f2, thursday).
practice(1, f3, friday).
practice(2, f4, thursday).
practice(3, f3, monday).
practice(6, f4, saturday).
practice(4, f3, tuesday).

listPractice(X, Y) :- team(X, Y, Z), practice(X, M, N).

findPracticeDay(R) :- write('Enter team name: '),
		      read(T),
		      team(X, T, Y),
		      practice(X, Z, R),
		      write(R).

listp([]).
listp([H|T]).
car([H|T], H).
cdr([H|T], T).
cons(X, L, [X|L]).
length([],0). 
length([H|T],N) :-  length(T,M), 
		    N is 1+M.

removePos(N, [], []).
removePos(N, L, R) :- C is 0, removeLoop(N, C, L, R).

removeLoop(N, C, L, R) :- N==C, cdr(L,R).
removeLoop(N, C, L, R) :- C1 is C+1, car(L, H), cdr(L, T), 
			removeLoop(N, C1, T, R1), cons(H, R1, R).


countAllLists([], 0).
countAllLists(L, R) :- car(L, H), listp(H), countAllLists(H, R1),
			cdr(L, T), countAllLists(T,R2),
			R is 1+R1+R2.
countAllLists(L, R) :- cdr(L, T), countAllLists(T, R1), R is R1.
