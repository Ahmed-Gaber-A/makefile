cc=gcc
vpath %.c ./src
INCLUDE_PATH=./inc
DEP = ./Dependencies
Object_Files = DIO.o LCD.o main.o bobpo-ekram-abdelkader-samir.o
Clean_Target = DIO.o LCD.o main.o app.exe
Dep_Files = .\Dependencies\DIO.d .\Dependencies\LCD.d .\Dependencies\main.d

-include $(Dep_Files)

%.o: %.c 
	$(cc) -c -I$(INCLUDE_PATH) $<  -o $@
	$(cc) -MM -I$(INCLUDE_PATH) $<  -o $(DEP)/$*.d

	
	
app.exe:	$(Object_Files)
	$(cc) $^ -o $@
	
	
	
clean: $(Clean_Target)
	del $(Clean_Target)
	del $(Dep_Files)
