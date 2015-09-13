EXTENSION = *.c
SOURCES = $(wildcard $(EXTENSION))
TARGETS = $(basename $(SOURCES))
COMPILER = $(CC)

define compile_n_run
	$(COMPILER) $1 -o $(basename $1); ./$(basename $1)
endef

all:
	@echo "please specify a target name"
	@echo "  ex: make xxx"
	@echo "then we will auto compile xxx.EXTENSION and generate xxx as target"

$(TARGETS): clean_target
	$(call compile_n_run, $(addsuffix .c,$@))

clean_target:
	$(RM) $(filter-out $@,$(MAKECMDGOALS))

clean:
	$(RM) $(TARGETS)
