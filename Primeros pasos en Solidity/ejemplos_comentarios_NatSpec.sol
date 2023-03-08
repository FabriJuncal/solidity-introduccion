// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;



/*
Estandar de comentarios NatSpec
Link page: https://docs.soliditylang.org/en/v0.8.17/natspec-format.html

@title <Titulo del contrato>
@author <Autor del contrato>
@notice <Explicar lo que hace el contrato o función>
@dev <Detalles adicionales sobre el contrato o función>
@param <nombre_parametro> <Describir para qué sirve el parámetro>
@return <valor_retorno> <Describir para qué sirve el valor de retorno>

*/


/**
 * @title MiContrato - Un contrato inteligente para un token ERC20.
 * @dev Basado en el estándar ERC20.
 */
contract MiContrato {
    string public nombre;
    string public simbolo;
    uint8 public constant decimales = 18;
    uint256 public totalTokens;
    mapping (address => uint256) private saldos;
    mapping (address => mapping (address => uint256)) private asignacion;

    /**
     * @dev Emite el evento Transferencia cuando se realiza una transferencia exitosa.
     * @param remitente La dirección del remitente.
     * @param receptor La dirección del receptor.
     * @param cantidad La cantidad de tokens transferidos.
     */
    event Transferencia(address indexed remitente, address indexed receptor, uint256 cantidad);

    /**
     * @dev Establece el nombre y el símbolo del token y establece el número total de tokens.
     * @param _nombre El nombre del token.
     * @param _simbolo El símbolo del token.
     * @param _totalTokens El número total de tokens.
     */

    /*
        El carácter "_" se utiliza como una convención en Solidity para referirse al valor 
        de un parámetro que se pasa a una función. Esto se hace para evitar confundir el 
        nombre del parámetro con el nombre de una variable global o del contrato.
    */
    constructor (string memory _nombre, string memory _simbolo, uint256 _totalTokens) {
        nombre = _nombre;
        simbolo = _simbolo;
        totalTokens = _totalTokens;
        saldos[msg.sender] = totalTokens;
    }

    /**
     * @dev Esta función devuelve el saldo actual de la cuenta del usuario.
     * @param cuenta La dirección de la cuenta del usuario.
     * @return El saldo actual de la cuenta del usuario.
     */
    function obtenerSaldo(address cuenta) public view returns (uint256) {
        return saldos[cuenta];
    }

    /**
     * @dev Esta función permite a un usuario transferir tokens a otra dirección.
     * @param receptor La dirección del receptor.
     * @param cantidad La cantidad de tokens a transferir.
     * @return Un valor booleano que indica si la transferencia fue exitosa o no.
     */
    function transferir(address receptor, uint256 cantidad) public returns (bool) {
        require(receptor != address(0), "La dirección del receptor no puede ser la dirección cero");
        require(cantidad > 0 && cantidad <= saldos[msg.sender], "La cantidad a transferir no es válida");
        
        saldos[msg.sender] -= cantidad;
        saldos[receptor] += cantidad;
        emit Transferencia(msg.sender, receptor, cantidad);
        return true;
    }
}
