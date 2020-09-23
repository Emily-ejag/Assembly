.data #declarar variables
	myCharacter: .byte 'a'
.text
	li $v0, 4 #4 para imprimir
	la $a0, myCharacter #imprimir el caracter que tenga myCharacter
	syscall