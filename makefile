main:
	nasm -f bin -o CoreOS.bin main.asm
	dd if=/dev/zero of=CoreOS.flp bs=512 count=2880	
	dd conv=notrunc if=CoreOS.bin of=CoreOS.flp
	mkisofs -o CoreOS.iso -b CoreOS.flp .
