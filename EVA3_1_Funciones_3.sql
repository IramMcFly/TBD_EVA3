create function sumar_numeros(num1 int, num2 int)
	returns int deterministic
    return num1 + num2;