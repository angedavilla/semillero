let numeroPerfecto = parseInt(prompt('Introduce el número', 0));
let arregloNumeros = [];

for (let i = 1; i < numeroPerfecto; i++) {
    if (numeroPerfecto % i === 0) {
        arregloNumeros.push(i);
    }
}
let sumaNumeros = arregloNumeros.reduce((a, b) => a + b, 0);

if (sumaNumeros === numeroPerfecto) {
    console.log(`El número ${numeroPerfecto} es perfecto`);
    console.log(`Los divisores son ${arregloNumeros.toString()}`);
    
} else {
    console.log(`El número ${numeroPerfecto} no es perfecto`);
}
