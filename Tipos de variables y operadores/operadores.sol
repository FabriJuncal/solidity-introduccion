//Indicando la version
pragma solidity >=0.4.4 <0.7.0;

contract Operadores{
    
    // Se define el contrato Operadores.

    // Operadores matematicos

    // Se declaran dos variables uint (enteros sin signo) "a" y "b" y se les asignan valores 32 y 4 respectivamente.
    uint a = 32;
    uint b = 4;


    // Se definen varias variables uint que realizan diferentes operaciones matemáticas utilizando "a" y "b".
    uint public suma = a+b;
    uint public resta = a-b;
    uint public division = a/b;
    uint public multiplicacion = a*b;
    uint public residuo = a%b;
    uint public exponenciacion = a**b;

    //Comparar enteros
    
    // Se declaran dos variables uint "c" y "d" y se les asigna el valor 3.
    uint c = 3;
    uint d = 3;


    // Se declaran varias variables bool que realizan diferentes comparaciones entre variables uint.
    bool public test_1 = a>b;
    bool public test_2 = a<b;
    bool public test_3 = c==d;
    bool public test_4 = a==d;
    bool public test_5 = a!=b;
    bool public test_6 = a>=b;



    //Operadores booleanos

    //Criterio de divisibilidad entre 5: si el numero termina en 0 o en 5

    // Se define una función pública "divisibilidad" que acepta un argumento uint "_k".
    function divisibilidad(uint _k) public pure returns(bool){
        

        // Se declara una variable uint "ultima_cifra" que toma el valor del módulo de "_k" con 10.
        uint ultima_cifra = _k%10;
        

        // Se compara "ultima_cifra" con 0 y 5 y se devuelve true si se cumple la condición, y false en caso contrario.
        if((ultima_cifra==0)||(ultima_cifra==5)){
            return true;
        }else{
            return false;
        }
        

        
    }

    // Se define una función pública "divisibilidadV2" que acepta un argumento uint "_k".
    // Esta función es similar a la anterior, pero devuelve false si "_k" no es divisible por 5 y true si lo es.
    function divisibilidadV2(uint _k) public pure returns(bool){
        

        // Se declara una variable uint "ultima_cifra" que toma el valor del módulo de "_k" con 10.
        uint ultima_cifra = _k%10;

        // Se compara "ultima_cifra" con 0 y 5 y se devuelve false si se cumple la condición, y true en caso contrario.
        if((ultima_cifra!=0)&&(ultima_cifra!=5)){
            return false;
        }else{
            return true;
        }
        
        
    }


}