// SPDX-License-Identifier: MIT
//Especificamos la version
pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

/** 

    Un mapping es una estructura de datos en Solidity que permite almacenar y recuperar valores asociados
    a una clave en particular. Puedes pensar en un mapping como una especie de diccionario en el que 
    cada clave tiene un valor asociado. Los mappings son útiles para implementar estructuras de datos
    como arrays asociativos, registros o tablas hash.

**/

contract Mappings{
    
    // Declaración de un mapping llamado "elegirNumero" que relaciona direcciones con enteros
    mapping (address => uint) public elegirNumero;

    // Función "ElegirNumero" que toma un número como argumento y lo asigna al mapping "elegirNumero" de la dirección de la persona que llama la función
    function ElegirNumero(uint _numero) public{
        elegirNumero[msg.sender] = _numero;
    }

    // Función "consultarNumero" que devuelve el número asignado al mapping "elegirNumero" de la dirección de la persona que llama la función
    function consultarNumero() public view returns(uint){
        return elegirNumero[msg.sender];
    }

    // Declaración de un mapping llamado "cantidadDinero" que relaciona cadenas de caracteres con enteros
    mapping (string => uint) cantidadDinero;

    // Función "Dinero" que toma un nombre y una cantidad como argumentos y asigna la cantidad de dinero correspondiente al mapping "cantidadDinero" para ese nombre
    function Dinero(string memory _nombre, uint _cantidad) public{
        cantidadDinero[_nombre] = _cantidad;
    }

    // Función "consultarDinero" que devuelve la cantidad de dinero asignada al mapping "cantidadDinero" para un nombre dado
    function consultarDinero(string memory _nombre) public view returns(uint){
        return cantidadDinero[_nombre];
    }

    // Definición de una estructura de datos "Persona" que tiene un nombre y una edad
    struct Persona{
        string nombre;
        uint edad;
    }

    // Declaración de un mapping llamado "personas" que relaciona enteros con estructuras "Persona"
    mapping(uint => Persona) personas;

    // Función "dni_Persona" que toma un número de DNI, un nombre y una edad como argumentos y asigna la estructura "Persona" correspondiente al mapping "personas" para ese número de DNI
    function dni_Persona(uint _numeroDni, string memory _nombre, uint _edad) public{
        personas[_numeroDni] = Persona(_nombre, _edad);
    }

    // Función "VisualizarPersona" que devuelve la estructura "Persona" asignada al mapping "personas" para un número de DNI dado
    function VisualizarPersona(uint _dni) public view returns(Persona memory){
        return personas[_dni];
    }

    
}