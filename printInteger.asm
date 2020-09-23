.data
	age: .word 23 #es como una palabra de 32 bits, como un integer necesita 32 bits se declara como word
	
.text
	li $v0, 1 #decimos al sistema que queremos imprimir un integer o una palabra con el 1
	lw $s0, age #necesitamos el (lw) cargar palabra, y debemos guardarlo en un registro argumento
	syscall