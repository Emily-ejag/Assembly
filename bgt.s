.data
	n1: .asciiz "Ingrese el primer número: "
	n2: .asciiz "Ingrese el segundo número: "
	n3: .asciiz "El numero mas grande es: "
.text
main: 	li $v0, 4
		la $a0, n1
		syscall
		
		li $v0, 5
		syscall
		move $t0, $v0
		
		li $v0, 4
		la $a0, n2
		syscall
		
		li $v0, 5
		syscall
		move $t1, $v0
		
		li $v0, 4
		la $a0, n3
		syscall
		
		bgt $t0, $t1, if
		j else
		
if:		li $v0, 1
		move $a0, $t0
		syscall
		j end

else:	li $v0,1
		move $a0, $t1
		syscall
		j end

end:	li $v0, 10
		syscall