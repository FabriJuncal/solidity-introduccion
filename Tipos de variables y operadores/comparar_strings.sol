// Indica la versión mínima de Solidity requerida para compilar el contrato
pragma solidity >=0.4.4 <0.7.0;

// Activa la característica experimental ABIEncoderV2
pragma experimental ABIEncoderV2;

// Define el contrato llamado compararStrings
contract compararStrings{
    
    // Define la función pública llamada Comparar que toma dos cadenas de texto en memoria y devuelve un valor booleano
    function Comparar(string memory _j ,string memory _i) public pure returns(bool){
        
        // Convierte la cadena de texto _i a un hash de bytes32 y lo almacena en hash_i
        bytes32 hash_i = keccak256(abi.encodePacked(_i));
        
        // Convierte la cadena de texto _j a un hash de bytes32 y lo almacena en hash_j
        bytes32 hash_j = keccak256(abi.encodePacked(_j));
        
        // Compara los hashes hash_i y hash_j y devuelve true si son iguales, de lo contrario devuelve false
        if(hash_i == hash_j){
            return true;
        }else{
            return false;
        }
        
    }
}
