
############################################################
# All targets
############################################################

TARGETS := temp

############################################################
# Common build rules
############################################################
OBJDIR := ./obj
OUTPUTDIR := ./output
SOURCEDIR := ./source

COMPILEFLAGS := -g -Wall
#COMPILEFLAGS += -ffunction-sections
#LINKERFLAGS := -Wl,-Map=$(OUTPUTDIR)/out.map
#LINKERFLAGS += -Wl,--print-map>$(OUTPUTDIR)/outmap.txt
#LINKERFLAGS += -Wl,--cref
#LINKERFLAGS += -Wl,--gc-sections


COMMON_HEADERS :=

.PHONY: all
all: $(TARGETS)

$(TARGETS): $*

%: $(SOURCEDIR)/%.c
	gcc $(COMPILEFLAGS) $< -o $(OUTPUTDIR)/$@

$(TARGETS): | $(OUTPUTDIR)

$(OUTPUTDIR):
	mkdir $(OUTPUTDIR)

$(OBJDIR):
	mkdir $(OBJDIR)

clean:
	rm -rf $(OUTPUTDIR)
	rm -rf $(OBJDIR)

