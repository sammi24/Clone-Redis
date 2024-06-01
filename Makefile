# Compiler
CXX = g++

# Compiler flags
CXXFLAGS = -Wall -Wextra -O2

# Source files directory
SRC_DIR = src

# Targets
TARGETS = server client

# Build rules
all: $(TARGETS)

server: $(SRC_DIR)/server.cpp
	$(CXX) $(CXXFLAGS) -o server $(SRC_DIR)/server.cpp

client: $(SRC_DIR)/client.cpp
	$(CXX) $(CXXFLAGS) -o client $(SRC_DIR)/client.cpp

# Clean rule
clean:
	rm -f $(TARGETS)

# Phony targets
.PHONY: all clean
