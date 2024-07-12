
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

$(TARGETS): | $(OUTPUTDIR)

$(OUTPUTDIR):
	mkdir $(OUTPUTDIR)

$(OBJDIR):
	mkdir $(OBJDIR)

clean:
	rm -rf $(OUTPUTDIR)
	rm -rf $(OBJDIR)

############################################################


SOURCES := $(wildcard $(SOURCEDIR)/*.c)

OBJECTS := $(patsubst $(SOURCEDIR)/%.c, $(OBJDIR)/%.o, $(SOURCES))

HEADERS := $(wildcard $(SOURCEDIR)/*.h)

############################################################

$(TARGETS): $(OBJECTS)
	gcc $(LINKERFLAGS) $(OBJECTS) -o $(OUTPUTDIR)/$@

$(OBJDIR)/%.o : $(SOURCEDIR)/%.c $(HEADERS) $(COMMON_HEADERS)
	gcc $(COMPILEFLAGS) -c $< -o $@

$(OBJECTS): | $(OBJDIR)

