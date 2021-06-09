let numeroUno = parseInt (prompt('Introduce el primer número', 0));
let numeroDos = parseInt (prompt('Introduce el segundo número', 0));

while (numeroUno <0 || numeroDos <0 || isNaN(numeroUno) || isNaN(numeroDos)) {
    numeroUno = parseInt (prompt('Introduce el primero número' , 0));
    numeroDos = parseInt (prompt('Introduce el segundo número', 0));
}

 let resultadoNumeros = 'La división de los números es: ' + (numeroUno / numeroDos);

 document.write(resultadoNumeros);