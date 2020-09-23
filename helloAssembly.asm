.data #los datos que el programa necesita
	myMessage: .asciiz "Hello World \n"
.text #las instrucciones

	li $v0, 4 #Imprimir mensaje es el numero 4
	la $a0, myMessage #que mensaje el que se carga en a0
	syscall #haga lo que digo
	