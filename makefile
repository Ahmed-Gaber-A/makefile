cc=gcc
vpath %.c ./Src
INCLUDE_PATH=./Inc
DEP = ./Dependencies
Object_Files = DIO.o LCD.o main.o bobpo-ekram-abdelkader-samir.o
Clean_Target = $(Object_Files) app.exe

%.o: %.c
	$(cc) -c -I$(INCLUDE_PATH) $<  -o $@
	
	
app.exe:	$(Object_Files)
	$(cc) $^ -o $@

clean: $(Clean_Target)
	del $(Clean_Target)
