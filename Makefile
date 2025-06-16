# Компиляторы и флаги
CC = gcc
NASM = nasm
CFLAGS = -m32 -Wall
NASMFLAGS = -f win32

# Имена файлов
ASM = asm_func.asm
ASM_OBJ = asm_func.o
C_SRC = main.c
C_OBJ = main.o
EXE = main.exe

.PHONY: all clean

all: $(EXE)

$(ASM_OBJ): $(ASM)
	$(NASM) $(NASMFLAGS) $< -o $@

$(C_OBJ): $(C_SRC)
	$(CC) $(CFLAGS) -c $< -o $@

$(EXE): $(C_OBJ) $(ASM_OBJ)
	$(CC) $(CFLAGS) $^ -o $@

clean:
	rm -f $(ASM_OBJ) $(C_OBJ) 