//Indicamos la version
pragma solidity >=0.4.4 <0.7.0;

/** 
    En Solidity, hay varios tipos de datos que se pueden usar para representar números enteros. Estos incluyen:

    uint: es un tipo de dato que representa un número entero sin signo. Puede tomar valores desde 0 hasta (2^n)-1,
    donde n es el número de bits utilizados para representar el valor. Por ejemplo, uint8 puede tomar valores de 0 a 255.

    int: es un tipo de dato que representa un número entero con signo. Puede tomar valores desde -(2^(n-1)) hasta (2^(n-1))-1,
    donde n es el número de bits utilizados para representar el valor. Por ejemplo, int8 puede tomar valores desde -128 hasta 127.

    uint256: es similar a uint, pero utiliza 256 bits para representar el valor.

    int256: es similar a int, pero utiliza 256 bits para representar el valor.

    uint8, uint16, uint32, uint64, uint128: son tipos de datos uint que utilizan 8, 16, 32, 64 y 128 bits, respectivamente.

    int8, int16, int32, int64, int128: son tipos de datos int que utilizan 8, 16, 32, 64 y 128 bits, respectivamente.

    Es importante tener en cuenta que el uso de un tipo de datos con un número de bits mayor al necesario puede resultar
    en un mayor consumo de gas y, por lo tanto, en una mayor carga financiera en la ejecución de los contratos inteligentes en la cadena de bloques.
**/

contract enteros{
    
    //Variables enteras sin signo
    uint mi_primer_entero;
    uint mi_primer_entero_inicializado = 3;
    uint cota = 5000;
    
    //Variables enteras sin signo con un numero especifico de bits
    uint8 entero_8_bits;
    uint64 entero_64_bits = 7000;
    uint16 entero_16_bits;
    uint256 entero_256_bits;
    
    //Variables enteras con signo
    int mi_primer_entero_con_signo;
    int mi_numero = -32;
    int mi_numero_2 = 65;
    
    //Variables enteras con signo con un numero especfico de bits
    int72 entero_con_signo_72_bits;
    int240 entero_con_240_bits = 90000;
    int256 entero_con_256_bits;
    
}