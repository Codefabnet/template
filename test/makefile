
############################################################
# All targets
############################################################
UNIT_TEST := unit_test

OBJDIR    := ../obj
OUTPUTDIR := ../output
LIBDIR    := ../lib

COMPILEFLAGS := -g -Wall
ARCHIVEFLAGS := rcs

UNIT_TEST_LIBS := -lgtest -lgtest_main -pthread

TEST_LIB_ARCHIVE := $(addprefix $(LIBDIR)/, lib_temp.a )

############################################################

TEST_LIB_OBJECTS := $(addprefix $(OBJDIR)/, temp.o )

UNIT_TEST_SOURCES := *.cpp

############################################################

$(UNIT_TEST): $(UNIT_TEST_SOURCES) $(TEST_LIB_ARCHIVE)
	g++ $(COMPILEFLAGS) $^ $(UNIT_TEST_LIBS) -o $(OUTPUTDIR)/$@

$(TEST_LIB_ARCHIVE) : $(TEST_LIB_OBJECTS)
	ar $(ARCHIVEFLAGS) $@ $^
