pragma solidity >=0.4.4 <0.8.19;

contract funciones_globales{
        // ==========================================================================================================
    /* Funciones Globales */

    // block.blockhash(blockNumber) => el hash de un bloque dado - sólo funciona para los 256 bloques más recientes, 
    //                                 excluyendo el actual
    function BlockBlockhash() public view returns(bytes32){
        return block.blockhash;
    }

    // block.coinbase => Esta función devuelve la dirección del minero que ha extraído el bloque actual.
    function BlockCoinbase() public view returns(address){
        return block.coinbase;
    }

    // block.difficulty => Esta función devuelve la dificultad actual de la red, que es el número estimado de 
    //                    hashes necesarios para encontrar un bloque válido.
    function BlockDifficulty() public view returns(uint){
        return block.difficulty;
    }

    // block.gaslimit => Esta función devuelve el límite de gas actual para los bloques en la cadena de bloques.
    function BlockGasLimit() public view returns(uint){
        return block.gaslimit;
    }

    // block.number => Esta función devuelve el número del bloque actual en la cadena de bloques.
    function BlockNumber() public view returns(uint){
        return block.number;
    }

    // block.timestamp => Esta función devuelve la marca de tiempo del bloque actual en segundos desde el Epoch de Unix.
    function BlockTimestamp() public view returns(uint){
        return block.timestamp;
    }

    // msg.data => Esta función devuelve los datos que se enviaron junto con la transacción que ejecuta el contrato.
    function MsgData() public view returns(bytes){
        return msg.data;
    }

    // msg.gas => Esta función devuelve el límite de gas para la transacción que ejecuta el contrato.
    function MsgGas() public view returns(uint){
        return msg.gas;
    }


    // msg.sender => Esta función devuelve la dirección de la cuenta que inició la transacción que ejecuta el contrato.
    function MsgSender() public view returns(address){
        return msg.sender;
    }

    // msg.sig => Esta función devuelve los primeros cuatro bytes de los datos de la transacción que ejecuta el contrato, 
    //            que representan la función que se llama.
    function MsgSig() public view returns(bytes4){
        return msg.sig;
    }

    // msg.value => Esta función devuelve la cantidad de Ether enviada junto con la transacción que ejecuta el contrato.
    function MsgValue() public view returns(uint){
        return msg.value;
    }

    // now (DEPRECATED) => Esta función devuelve la marca de tiempo actual en segundos desde el Epoch de Unix.
    // function Now() public view returns(uint){
    //     return now;
    // }

    // tx.gasprice => Esta función devuelve el precio del gas en Wei que se estableció para la transacción.
    function txGasPrice() public view returns(uint){
        return tx.gasprice;
    }

    // tx.origin => Esta función devuelve la dirección de la cuenta que inició la transacción original que llamó al contrato. 
    //            Esta dirección puede ser diferente de msg.sender si la transacción original fue enviada a través de un contrato intermedio.
    function txOrigin() public view returns(address){
        return tx.origin;
    }


    // ==========================================================================================================
}