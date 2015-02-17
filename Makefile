# Declaration of variables
CC = g++
CC_FLAGS = -w -std=c++11
LIBS = -framework sfml-window -framework sfml-graphics -framework sfml-system

# File names
EXEC = game
SOURCES = $(wildcard source/*.cpp)
OBJECTS = $(SOURCES:.cpp=.o)

# Main target
$(EXEC): $(OBJECTS)
	$(CC) $(OBJECTS) -o $(EXEC) $(LIBS) 

# To obtain object files
%.o: %.cpp
	$(CC) -c $(CC_FLAGS) $< -o $@

# To remove generated files
clean:
	rm -f $(EXEC) $(OBJECTS)
	
	
run:
	./$(EXEC)