//Indicar la version
pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

/** 
    En Solidity, existen varios tipos de datos que se pueden usar para representar números no enteros. 
    Algunos de estos tipos de datos son:

    -fixed: es un tipo de datos que representa un número con punto fijo. El número se divide en dos partes,
    una parte entera y una parte fraccionaria, con un número fijo de decimales. Por ejemplo, fixed256x8 
    representa un número con 256 bits de precisión, 8 de los cuales se usan para representar la parte fraccionaria.

    -ufixed: es un tipo de datos que representa un número con punto fijo sin signo.

    -bool: es un tipo de datos que representa un valor booleano, es decir, un valor que puede ser verdadero o falso.

    -address: es un tipo de datos que representa una dirección en la cadena de bloques Ethereum.

    -bytes: es un tipo de datos que representa una matriz de bytes de longitud variable.

    -string: es un tipo de datos que representa una cadena de texto codificada en UTF-8.

    Es importante tener en cuenta que los tipos de datos no enteros pueden ser menos eficientes en 
    términos de espacio de almacenamiento y consumo de gas en comparación con los tipos de datos enteros, 
    por lo que es importante considerar cuidadosamente la elección del tipo de datos según la necesidad 
    de su uso en el contrato inteligente.
**/

contract mas_variables{
    
// Ejemplo de variables de tipo fixed
fixed public fixedNumber = 1.23456789;
fixed256x8 public anotherFixedNumber = 2.34567891;

// Ejemplo de variables de tipo ufixed
ufixed public ufixedNumber = 0.12345678;
ufixed128x18 public anotherUfixedNumber = 0.23456789;

// Ejemplo de variables de tipo bool
bool public isTrue = true;
bool public isFalse = false;

// Ejemplo de variables de tipo address
address public myAddress = 0x1234567890123456789012345678901234567890;

// Ejemplo de variables de tipo bytes
bytes public myBytes = hex"1234567890abcdef";

// Ejemplo de variables de tipo string
string public myString = "Hola, mundo!";

    
}