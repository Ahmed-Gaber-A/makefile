cc=gcc
vpath %.c ./src
INCLUDE_PATH=./inc
DEP = ./Dependencies
Object_Files = DIO.o LCD.o main.o bobpo-ekram-abdelkader-samir.o
Clean_Target = DIO.o LCD.o main.o app.exe


%.o: %.c 
	$(cc) -c -I$(INCLUDE_PATH) $<  -o $@
	
	
app.exe:	$(Object_Files)
	$(cc) $^ -o $@

clean: $(Clean_Target)
	del $(Clean_Target)
