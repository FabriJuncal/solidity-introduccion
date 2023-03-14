//Indicamos la version
pragma solidity >=0.4.4 <0.7.0;

contract Arrays{
    
    // Declaramos un array de enteros de longitud fija 5, inicializado con los valores 1, 2 y 3
    uint[5] public array_enteros = [1,2,3];

    // Declaramos un array de enteros de 32 bits de longitud fija con 7 posiciones
    uint32[7] array_enteros_32_bits;

    // Declaramos un array de strings de longitud fija 15 
    string[15] arra_strings;

    // Declaramos un array dinámico de enteros
    uint [] public array_dinamico_enteros;

    // Definimos una estructura llamada Persona con los campos nombre y edad
    struct Persona{
        string nombre;
        uint edad;
    }

    // Declaramos un array dinámico de tipo Persona
    Persona [] public array_dinamico_personas;

    // Definimos una función pública que modifica los arrays
    function modificar_array() public{
        // Agregamos un nuevo elemento al array dinámico de enteros
        array_dinamico_enteros.push(_numero);
        // Agregamos un nuevo elemento al array dinámico de personas
        array_dinamico_personas.push(Persona(_nombre, _edad));
        // Modificamos el tercer elemento del array de enteros de longitud fija
        array_enteros[2]=56;
    }

    // Accedemos al valor del tercer elemento del array de enteros de longitud fija y lo almacenamos en la variable pública 'test'
    uint public test = array_enteros[2];
    
}