VERSION = 4
PATCHLEVEL = 15
SUBLEVEL = 0
EXTRAVERSION =
NAME = Fearless Coyote

obj-m += one.o

all: 
	make -C /lib/modules/$(shell uname -r)/build/ M=$(PWD) modules
clean:
	make -C /lib/modules/$(shell uname -r)/build/ M=$(PWD) clean
