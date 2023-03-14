//Indicar la version
pragma solidity >=0.4.4 <0.7.0;

// En Solidity, existen varios tipos de casting que se pueden utilizar para convertir un tipo de datos en otro.
// Estos son algunos de los tipos de casting más comunes:

contract casteo{

    // 1) Conversiones implícitas: Son conversiones que se realizan automáticamente por Solidity sin necesidad
    // de una sintaxis especial. Por ejemplo, se puede convertir un uint en un int sin necesidad de utilizar 
    // un casting explícito, ya que los dos tipos son compatibles.

    // 2) Casting explícito: Es el proceso de convertir un tipo de datos en otro utilizando la sintaxis de casting. 
    // Por ejemplo, se puede convertir un uint en un int utilizando la siguiente sintaxis:
    uint myUint = 123;
    int myInt = int(myUint);

    // 3) Casting de tamaño: Es el proceso de convertir un tipo de datos en otro del mismo tamaño. 
    // Por ejemplo, se puede convertir un uint8 en un int8 utilizando la siguiente sintaxis:
    uint8 myUint8 = 123;
    int8 myInt8 = int8(myUint8);

    // 4) Casting de dirección: Es el proceso de convertir una dirección a un tipo de datos entero. 
    // Por ejemplo, se puede convertir una dirección en un uint utilizando la siguiente sintaxis:
    address myAddress = 0x1234567890123456789012345678901234567890;
    uint myUint = uint(myAddress);

    // 5) Casting de bytes: Es el proceso de convertir un tipo de datos bytes en otro tipo de datos. 
    // Por ejemplo, se puede convertir un bytes32 en un uint utilizando la siguiente sintaxis:
    bytes32 myBytes32 = 0x1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef;
    uint myUint = uint(myBytes32);

    /**
    
    Es importante tener en cuenta que algunos tipos de casting pueden ser peligrosos si se utilizan incorrectamente,
    ya que pueden causar pérdida de datos o errores en el programa. Por lo tanto, es importante entender cómo funcionan
    los diferentes tipos de casting en Solidity y utilizarlos con precaución.

    **/


    
    
}