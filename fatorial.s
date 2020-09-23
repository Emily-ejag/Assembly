.data
	num: .asciiz "Ingrese el numero: "
	fac: .asciiz "F( "
	fac2: .asciiz ") = "
	facTotal: .asciiz "El factorial total es: "
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
		
# Se comienza haciendo el for

		li $t2, 1 #Contador
		li $t1, 1 #Varible de resultados
		
loop:	bgt  $t2, $t0, endLoop
		mul $t1, $t1, $t2 #se hace la multiplicaci[on del contador con la variable de resultados
		
		li $v0, 4
		la $a0, fac
		syscall
		
		li $v0, 1
		move $a0, $t2
		syscall
		
		li $v0, 4
		la $a0, fac2
		syscall
		
		li $v0, 1
		move $a0, $t1
		syscall
		
		li $v0, 4
		la $a0, nl
		syscall
		
		addi $t2,$t2,1 # se incremente en 1 el contador
		j loop

endLoop:
#mostrar resultados
			
		li $v0, 4
		la $a0, facTotal
		syscall
		
		li $v0, 1
		move $a0, $t1
		syscall
		
		li $v0, 4
		la $a0, nl
		syscall
		
		li $v0, 10
		syscall
		