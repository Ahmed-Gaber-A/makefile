cc=gcc
vpath %.c ./src
INCLUDE_PATH=./inc
Object_Files = DIO.o LCD.o main.o bobpo-ekram-abdelkader-samir.o


%.o: %.c
	$(cc) -c -I$(INCLUDE_PATH) $<  -o $@


app.exe:	$(Object_Files)
	$(cc) $^ -o $@
