.data
	myDouble: .double 7.345 #imprimir double
	zeroDouble: .double 0.0 #necesario tener el 0 tambien
.text
	ldc1 $f2, myDouble #double se va a poner en 2 lugare porque son 64 bits
	ldc1 $f0, zeroDouble
	
	li $v0, 3 #el 3 es para impirmir un double
	add.d $f12, $f2, $f0 # esta sumando los 2 doubles y almacenando en f12 para imprimir para double tambien deben estar en f12
	syscall