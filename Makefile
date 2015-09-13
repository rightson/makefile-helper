COMPILER = $(CC)
EXTENSION = *.c
SOURCES = $(wildcard $(EXTENSION))
TARGETS = $(basename $(SOURCES))

define compile_n_run
	$(COMPILER) $1 -o $(basename $1) && ./$(basename $1)
endef

all:
	@echo "Please specify a target name"
	@echo "  ex: make xxx"
	@echo "then it will"
	@echo "  1. compile the source file name xxx.EXTENSION into xxx"
	@echo "  2. execute ./xxx if 1. is successful"

$(TARGETS): clean_target
	$(call compile_n_run, $(addsuffix .c,$@))

clean_target:
	$(RM) $(filter-out $@,$(MAKECMDGOALS))

clean:
	$(RM) $(TARGETS)
