vpath %.c ./src
INCLUDE_PATH=./inc
#HEADER = include/header.h 
OBJ_files=DIO.o LCD.o main.o
cc=gcc
LINK_Target=app.exe
CLEAN_Target=$(OBJ_files) $(LINK_Target)
app.exe : $(OBJ_files)
	$(cc) $^ -o $@
obj : DIO.c LCD.c main.c
	$(cc) -c -I$(INCLUDE_PATH) $< -o DIO.o
	$(cc) -c -I$(INCLUDE_PATH) $< -o LCD.o
	$(cc) -c -I$(INCLUDE_PATH) $< -o main.o
#%.o : %.c
#	$(cc) -c -I$(INCLUDE_PATH) $< -o $@
clean :
	rm $(CLEAN_Target)


