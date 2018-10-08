demo(A, Q):- provar(A, A, Q).

% S - Self, onde comeca a prova, A - Agente actual, Q questao
provar(S, A, Q):-
	agente(A, P),
	processar(S, Q, P).

provar(S, A, Q):-
	isa(A, C),
	provar(S, C, Q).
	
% posso provar Q?
processar(_, Q, _):-
	callable(Q),
	call(Q),!.
%Q composto?
processar(S, Q, _):-
	nonvar(Q),
	Q=(Q1, Q2), % decompor Q em Q1 e Q2
	demo(S, Q1),
	demo(S, Q2).
processar(S, Q, P):-
	processar_propriedades(S, Q, P).

processar_propriedades(S, Q, [(Q:-Body)|_]):-
	demo(S, Body),!.
processar_propriedades(_, Q, [Q|_]).
processar_propriedades(S, Q, [_|P]):-
	processar_propriedades(S, Q, P).
	

