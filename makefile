cc=gcc
vpath %.c ./src
INCLUDE_PATH=./inc
DEP_path = .\Dependencies
src_path = ./src
given_obj = bobpo-ekram-abdelkader-samir.o

src_files = $(subst $(src_path)/,,$(wildcard $(src_path)/*.c))
DEPS  = $(src_files:.c=.d)
Object_Files =  $(src_files:.c =.o) 

Clean_Target = $(Object_Files)
link = app.exe

Dep_Files = $(addprefix $(DEP_path)\,$(DEPS))

-include $(Dep_Files)

%.o: %.c 
	$(cc) -c -I$(INCLUDE_PATH) $<  -o $@
	$(cc) -MM -I$(INCLUDE_PATH) $<  -o $(DEP)/$*.d

compile : $(Object_Files)	

	
$(link) : $(Object_Files) $(given_obj)
	$(cc) $^ -o $@

all : $(link)	
	
clean : $(Clean_Target)
	rm $(Clean_Target)

clean_all : 
	rm app.exe $(Clean_Target) $(Dep_Files)
