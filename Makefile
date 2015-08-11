all:
	lex -o analex.c analex.l
	gcc analex.c -o analex -lfl
