CC=g++ 
SOURCES=Address.cpp DataBase.cpp Date.cpp RoomForSale.cpp StandardFunctions.cpp main.cpp
OBJSCPP=$(SOURCES:.cpp=.o)

all: $(OBJSCPP)
	$(CC) $^ -o myprog.exe

.cpp.o:
	$(CC)  $< -c -o $@

clean:
	del $(OBJSCPP) *.exe

test:
	myprog.exe