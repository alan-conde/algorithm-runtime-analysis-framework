# ----------------------------
# Project directories
# ----------------------------
SRC_DIR := src
BUILD_DIR := build
SCRIPT_DIR := scripts
OUTPUT_DIR := output

# ----------------------------
# Compiler & flags
# ----------------------------
CXX := g++
CXXFLAGS := -std=c++17 -O2 -Wall -Wextra
CPPFLAGS :=
LDFLAGS :=

# ----------------------------
# Source files
# ----------------------------
OBJS := $(BUILD_DIR)/algorithm_timer.o $(BUILD_DIR)/algorithms.o
TARGET := $(BUILD_DIR)/run_tests

.PHONY: all clean run

# ----------------------------
# Default rule
# ----------------------------
all: $(TARGET)

# ----------------------------
# Ensure required directories exist
# ----------------------------
$(BUILD_DIR) $(OUTPUT_DIR):
	mkdir -p $@

# ----------------------------
# Build target executable
# ----------------------------
$(TARGET): $(OBJS) | $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) $(LDFLAGS) -o $@ $(OBJS)

# ----------------------------
# Compile each source file into object file
# ----------------------------
$(BUILD_DIR)/algorithm_timer.o: $(SRC_DIR)/algorithm_timer.cc | $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) $(CPPFLAGS) -c $< -o $@

$(BUILD_DIR)/algorithms.o: $(SRC_DIR)/algorithms.cpp | $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) $(CPPFLAGS) -c $< -o $@

# ----------------------------
# Clean build artifacts
# ----------------------------
clean:
	rm -rf $(BUILD_DIR) $(OUTPUT_DIR)

# ----------------------------
# Run the program
# ----------------------------
run: $(TARGET) $(OUTPUT_DIR)
	./$(TARGET)