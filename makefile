vpath %.c ./src
INCLUDE_PATH=./inc
cc=gcc
Object_Files = DIO.o LCD.o main.o bobpo-ekram-abdelkader-samir.o
Link_Target = app.exe


%.o: %.c
	$(cc) -c -I$(INCLUDE_PATH) $<  -o $@


app:	$(Object_Files)
	gcc $^ -o $(Link_Target)

clean: 
	rm *.o