vpath %.c .\src\

Include = .\inc\

obj : DIO.c LCD.c main.c
	gcc -c -I$(Include)DIO.c  -o DIO.o 
	gcc -c -I$(Include)LCD.c  -o LCD.o 
	gcc -c -I$(Include)main.c -o main.o

