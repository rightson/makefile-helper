SRCS = $(wildcard *.c)
BINS = $(basename $(SRCS))

define compile_n_run
	gcc $1 -o $(basename $1); ./$(basename $1)
endef

all:
	@echo "please specify target"

$(BINS): clean_target
	$(call compile_n_run, $(addsuffix .c,$@))

clean_target:
	$(RM) $(filter-out $@,$(MAKECMDGOALS))

