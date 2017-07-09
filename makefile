TARGET=Arsac-1
CC=g++
CFLAGS=-c -Wall
LDFLAGS=

SOURCES = src/main.cpp


SRCDIR := src
SRCEXT := cpp
INCDIR := inc


RM := rm -rf
CPP_DEPS = $(OBJECTS:.o=.d)
BUILDDIR = ./Release
BINARYDIR = $(BUILDDIR)/obj
BINARYTESTDIR = $(BINARYDIR)/test
OBJECTS := $(patsubst $(SRCDIR)/%,$(BINARYDIR)/%,$(SOURCES:.$(SRCEXT)=.o))

LIBS :=

all: $(TARGET)

$(TARGET): $(OBJECTS)



	@echo "   ___|     \     |   |     \      _ \  ";
	@echo " \___ \    _ \    |   |    _ \    |   | ";
	@echo "       |  ___ \   ___ |   ___ \   __ <  ";
	@echo " _____/ _/    _\ _|  _| _/    _\ _| \_\ ";
	@echo "                                        ";
	@echo 'Building target: $@'
	@echo 'Invoking: GCC C++ Linker'
	$(CC) -o $(BUILDDIR)/$(TARGET) $(OBJECTS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

$(BINARYDIR)/%.o: $(SRCDIR)/%.cpp
	@mkdir -p $(BINARYDIR)
	@mkdir -p $(BINARYTESTDIR)
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	$(CC) -Wall -c -I$(INCDIR) -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

clean :
		-$(RM) $(OBJECTS)$(CPP_DEPS) $(BUILDDIR)/$(TARGET)
		-@echo ' '

.PHONY: all clean dependents
