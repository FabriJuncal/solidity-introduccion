// Indica la versión a utilizar
// Especificamos que la versión de compilación que se utilizará debe esta entre los rangos definidos:
// mayor o igual que 0.4.4 y menor que 0.8.19
pragma solidity >=0.4.4 <0.8.19;

// Habilita la caracteristica expetimental "ABIEncoderV2" que habilita codificación y decodificación
// de tipos de datos estructurados complejos en funciones y eventos.
// al habilitar esta caracteristica se puede utilizar la función: abi.encodePacked()
pragma experimental ABIEncoderV2;

contract hash{
    // Computo del hash de un string.
    function calcularHash(string memory _cadena) public pure returns(bytes32){
        return keccak256(abi.encodePacked(_cadena));
    }

    // Computo del hash de un string, un entero y una dirección.
    function calcularHash(string memory _cadena, uint _k, address _direccion) public pure returns(bytes32){
        return keccak256(abi.encodePacked(_cadena, _k, _direccion));
    }

    // Computo del hash de un string, un entero, una dirección mas otro string y entero de valores fijos.
    function calcularHash(string memory _cadena, uint _k, address _direccion) public pure returns(bytes32){
        return keccak256(abi.encodePacked(_cadena, _k, _direccion, "Hola", uint(3)));
    }
}