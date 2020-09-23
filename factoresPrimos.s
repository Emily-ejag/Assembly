.data

	num: .asciiz "Ingrese el numero "
	salida: .asciiz "Los factores primos son: "
	coma: .asciiz " ,"
	nl: .asciiz "\n"
	
.text
main:

		li $v0, 4
		la $a0, num
		syscall
		
		li $v0, 5
		syscall
		move $t0, $v0
		
		li $v0, 4
		la $a0, nl
		syscall
		
		li $v0, 4
		la $a0, salida
		syscall
		
		#while (i < n){
		#	if ((n%i)==0){
		#		print "i, ";
		#		n/=i;
		#	} else {
		#		i++;
		#	}
		#}
		#print "n. \n"
		
		li $t1,2 #contador, se inicia en 2 porque es el menos numero primos
		
		while: 	bge $t1, $t0, endWhile
				
				div $t0, $t1 #la division n/i
				mfhi $t2 # n%i aqui se almacena el valor del resudio
				bnez $t2, else #si el resultado no es igual a 0
				
				li $v0, 1
				move $a0, $t1
				syscall
				
				li $v0,4
				la $a0, coma
				syscall
				
				mflo $t0 # n/=i se almacena el valor de la division
				j while
		
		else: 	addi $t1,$t1,1 # se aumenta el contador
				j while
		
		endWhile:
				li $v0, 1
				move $a0, $t0
				syscall
				
				li $v0,4
				la $a0, nl
				syscall
				
				
				li $v0, 10
				syscall



	
