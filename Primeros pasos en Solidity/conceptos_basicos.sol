// Especificamos la versión de compilación que se utilizará es la 0.4.0, no soportará mayores o menores
// pragma solidity ^0.4.0;

// Especificamos que la versión de compilación que se utilizará debe esta entre los rangos definidos:
// mayor o igual que 0.4.4 y menor que 0.7.0
pragma solidity >=0.4.4 <0.7.0;

// Creamos el contrato (sería como una clase comun en la programación)
contract PrimerContrato{
    // Inicializamos un atributo llamado "owner" de tipo "address" (Este tipo de dato hace referencia a una dirección de wallet)
    address owner;
 
    // Inicializamos un atributo llamado "token" de tipo "ERC20Basic" (Este tipo de dato hace referencia a los tokens ERC20)
    ERC20Basic token; 
    constructor() public{
        // msg.sender => Esta función devuelve la dirección de la cuenta que inició la transacción que ejecuta el contrato.
        owner = msg.sender;
        // new ERC20Basic(1000) => Instanciamos la clase ERC20Basic
        //      Parametro => Recibe como parametro un valor entero que indica la cantidad de Tokens que se crearan
        token = new ERC20Basic(1000)
    }

    // ==========================================================================================================
    /* Funciones Globales */

    // block.blockhash(blockNumber) => Esta función devuelve el hash del bloque con el número especificado. 
    //                                Si el número de bloque no es válido, devuelve un valor nulo.



    // block.coinbase => Esta función devuelve la dirección del minero que ha extraído el bloque actual.
    function BlockCoinbase() public view returns(address){
        return block.coinbase;
    }

    // block.difficulty => Esta función devuelve la dificultad actual de la red, que es el número estimado de 
    //                    hashes necesarios para encontrar un bloque válido.
    function BlockDifficulty() public view returns(uint){
        block.difficulty;
    }

    // block.gaslimit => Esta función devuelve el límite de gas actual para los bloques en la cadena de bloques.

    // block.number => Esta función devuelve el número del bloque actual en la cadena de bloques.
    function BlockNumber() public view returns(uint){
        block.number;
    }

    // block.timestamp => Esta función devuelve la marca de tiempo del bloque actual en segundos desde el Epoch de Unix.

    // msg.data => Esta función devuelve los datos que se enviaron junto con la transacción que ejecuta el contrato.

    // msg.gas => Esta función devuelve el límite de gas para la transacción que ejecuta el contrato.

    // msg.sender => Esta función devuelve la dirección de la cuenta que inició la transacción que ejecuta el contrato.
    function MsgSender() public view returns(address){
        return msg.sender;
    }


    // msg.sig => Esta función devuelve los primeros cuatro bytes de los datos de la transacción que ejecuta el contrato, 
    //            que representan la función que se llama.
    function MsgSig() public view returns(bytes4){
        msg.sig;
    }

    // msg.value => Esta función devuelve la cantidad de Ether enviada junto con la transacción que ejecuta el contrato.

    // now => Esta función devuelve la marca de tiempo actual en segundos desde el Epoch de Unix.
    function Now() public view returns(uint){
        now;
    }

    // tx.gasprice => Esta función devuelve el precio del gas en Wei que se estableció para la transacción.
    function txGasPrice() public view returns(uint){
        tx.gasprice
    }

    // tx.origin => Esta función devuelve la dirección de la cuenta que inició la transacción original que llamó al contrato. 
    //            Esta dirección puede ser diferente de msg.sender si la transacción original fue enviada a través de un contrato intermedio.



    // ==========================================================================================================
}

