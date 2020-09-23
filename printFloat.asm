.data
	pi: .float 3.14 #valor flotante 2.43536
.text

	li $v0, 2 # imprimir un flotante es con 2
	lwc1 $f12, pi # se debe cargar en cargar parabra procesador 1, de ley debe ser en el registro 12 de flotante
	syscall