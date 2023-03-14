//Indicar la version
pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

/** 
    En Solidity, existen varios tipos de modificadores que se pueden utilizar en la definición de funciones. 
    Estos modificadores se utilizan para agregar comportamientos adicionales a las funciones y para restringir 
    su ejecución.

    A continuación se presentan algunos de los modificadores más comunes en Solidity:

    -public: Este modificador permite que la función sea llamada desde cualquier lugar dentro o fuera del contrato.

    -private: Este modificador hace que la función solo pueda ser llamada desde dentro del contrato.

    -internal: Este modificador hace que la función solo pueda ser llamada desde dentro del contrato y 
    desde contratos derivados.

    -external: Este modificador hace que la función solo pueda ser llamada desde fuera del contrato.

    -payable: Este modificador indica que la función puede recibir Ether junto con la llamada.

    -view: Este modificador indica que la función no modifica el estado del contrato y solo devuelve información.

    -pure: Este modificador indica que la función no modifica el estado del contrato y no accede a 
    ningún valor fuera de su ámbito.

    Además, también es posible crear modificadores personalizados para agregar comportamientos adicionales a 
    las funciones según las necesidades específicas del contrato.

**/

contract public_private_internal{
    
    //Modificador public 
    uint public mi_entero = 45;
    string public mi_string = "Joan";
    address public owner;
    
    constructor() public{
        owner = msg.sender;
    }
    
    //Modificador private
    uint private mi_entero_privado = 10;
    bool private flag =true;
    
    function test(uint _k) public{
        mi_entero_privado = _k;
    }
    
    //Modificador internal
    bytes32 internal hash = keccak256(abi.encodePacked("hola"));
    address internal direccion = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;


}

    // Modificador personalizado
    // Estos tipos de Modificadores son de mucha ayuda para validar los parametros que se le pasan a los métodos/funciones
contract ExampleModifiers {
    uint256 public myNumber = 0;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    // Creamos un Modificador Personalizado
    // Valida si el address del Sender es igual al Owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Only the contract owner can call this function");
        _;
    }

    // Creamos un Modificador Personalizado
    // Valida que el numero que se pasa como parametro es Positivo
    modifier onlyPositive(uint256 number) {
        require(number > 0, "The number must be greater than zero");
        _;
    }

    // Métodos/Funciones de Ejemplo
    function setNumber(uint256 number) public onlyOwner onlyPositive(number) {
        myNumber = number;
    }

    function getNumber() public view returns (uint256) {
        return myNumber;
    }

    function withdraw() public onlyOwner {
        payable(owner).transfer(address(this).balance);
    }
}


/**
    Modificadores Memory y Storage

    En este ejemplo, la función setNumber utiliza el modificador memory para almacenar temporalmente 
    el valor de number en un array en la memoria. Luego, se asigna el valor de numbers[0] a la variable
    de estado myNumber.

    La función updateNumber utiliza el modificador storage para actualizar directamente el valor de 
    myNumber en la memoria permanente del contrato.

    La función setNumberArray también utiliza el modificador storage para actualizar un valor en 
    un array de almacenamiento permanente del contrato. El modificador storage permite que la 
    función actualice directamente el valor del array en la memoria permanente del contrato.

    Finalmente, la función updateArray llama a setNumberArray y actualiza el valor de un array 
    de almacenamiento permanente del contrato.

    Espero que esto te ayude a entender cómo se utilizan los modificadores memory y storage en Solidity.

**/

contract ExampleMemoryStorage {
    uint256 public myNumber; // Declara una variable de estado pública llamada myNumber

    function setNumber(uint256 number) public { // Declara una función pública llamada setNumber que toma un parámetro de número entero sin signo de 256 bits
        uint256[] memory numbers = new uint256[](5); // Declara un array en memoria temporal de números sin signo de 256 bits con una longitud de 5 elementos
        numbers[0] = number; // Asigna el valor del parámetro number al primer elemento del array numbers
        myNumber = numbers[0]; // Asigna el valor del primer elemento del array numbers a la variable de estado myNumber
    }

    function getNumber() public view returns (uint256) { // Declara una función pública de lectura llamada getNumber que devuelve un número entero sin signo de 256 bits
        return myNumber; // Devuelve el valor actual de la variable de estado myNumber
    }

    function updateNumber(uint256 number) public { // Declara una función pública llamada updateNumber que toma un parámetro de número entero sin signo de 256 bits
        myNumber = number; // Asigna el valor del parámetro number a la variable de estado myNumber
    }

    function setNumberArray(uint256[] storage numbers, uint256 index, uint256 number) internal { // Declara una función interna llamada setNumberArray que toma un array de almacenamiento, un índice y un número entero sin signo de 256 bits como parámetros
        numbers[index] = number; // Asigna el valor del parámetro number al elemento del array de almacenamiento especificado por el índice
    }

    function updateArray(uint256[] storage numbers) public { // Declara una función pública llamada updateArray que toma un array de almacenamiento como parámetro
        setNumberArray(numbers, 0, 1); // Llama a la función setNumberArray para actualizar el valor del primer elemento del array de almacenamiento con el valor 1
    }
}
