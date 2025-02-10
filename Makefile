# Compiler
CC = gcc
# Compiler flags
CFLAGS = -Wall -Wextra -g
# Source files
SRC = $(wildcard *.c)
# Object files
OBJ = $(SRC:.c=.o)
# Executable name
TARGET = program

# Default rule: build the program
all: $(TARGET)

# Link object files to create the executable
$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJ)

# Compile .c files into .o files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Run the program
run: $(TARGET)
	./$(TARGET)

# Clean up object files and executable
clean:
	rm -f $(OBJ) $(TARGET)

# Rebuild everything
rebuild: clean all

