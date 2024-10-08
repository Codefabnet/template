
############################################################
# All targets
############################################################

TARGETS := temp
UNIT_TEST := unit_test

############################################################
# Common build rules
############################################################
OBJDIR := ./obj
LIBDIR := ./lib
OUTPUTDIR := ./output
SOURCEDIR := ./source
TESTDIR := ./test

COMPILEFLAGS := -g -Wall
#COMPILEFLAGS += -ffunction-sections
LINKERFLAGS := -Wl,-Map=$(OUTPUTDIR)/out.map
LINKERFLAGS += -Wl,--print-map>$(OUTPUTDIR)/out_map.txt
#LINKERFLAGS += -Wl,--cref
#LINKERFLAGS += -Wl,--gc-sections

.PHONY : all
all: $(TARGETS) $(UNIT_TEST)

$(TARGETS): | $(OUTPUTDIR)
$(UNIT_TEST): | $(LIBDIR) $(OUTPUTDIR)

$(OUTPUTDIR):
	mkdir $(OUTPUTDIR)

$(LIBDIR):
	mkdir $(LIBDIR)

$(OBJDIR):
	mkdir $(OBJDIR)

clean:
	rm -rf $(OUTPUTDIR)
	rm -rf $(OBJDIR)
	rm -rf $(LIBDIR)


############################################################

SOURCES := $(wildcard $(SOURCEDIR)/*.c)

OBJECTS := $(patsubst $(SOURCEDIR)/%.c, $(OBJDIR)/%.o, $(SOURCES))

HEADERS := $(wildcard $(SOURCEDIR)/*.h)

############################################################

$(TARGETS): $(OBJECTS)
	gcc $(LINKERFLAGS) $(OBJECTS) -o $(OUTPUTDIR)/$@

$(OBJDIR)/%.o : $(SOURCEDIR)/%.c $(HEADERS) $(COMMON_HEADERS)
	gcc $(COMPILEFLAGS) -c $< -o $@

$(UNIT_TEST): $(OBJECTS)
	$(MAKE) -C $(TESTDIR)

$(OBJECTS): | $(OBJDIR)

