//Indicamos la version
pragma solidity >=0.4.4 <0.7.0;

/** 
    En Solidity, las unidades de tiempo se utilizan comúnmente para medir intervalos de tiempo en los 
    contratos inteligentes. Las unidades de tiempo disponibles en Solidity son:

    seconds: es la unidad de tiempo predeterminada en Solidity y representa el número de segundos.

    minutes: representa el número de minutos.

    hours: representa el número de horas.

    days: representa el número de días.

    weeks: representa el número de semanas.

    years: representa el número de años.

    Para utilizar estas unidades de tiempo en Solidity, se pueden multiplicar por una cantidad específica de tiempo.
    Por ejemplo, 1 minute se puede representar como 1 minutes o 60 seconds. De manera similar, 1 day se puede
    representar como 1 days o 24 hours.

**/

contract tiempo{
    
    //Unidades de tiempo
    uint public tiempo_actual = now;
    uint public un_minuto = 1 minutes;
    uint public dos_horas = 2 hours;
    uint public cincuenta_dias = 50 days;
    uint public una_semana = 1 weeks;
    
    //Operamos con las unidades de tiempo
    function MasSegundos() public view returns(uint){
        return now + 50 seconds;
    }
    
    function MasHoras() public view returns(uint){
        return now + 1 hours;
    }
    
    function MasDias() public view returns(uint){
        return now + 3 days;
    }
    
    function MasSemanas() public view returns(uint){
        return now + 1 weeks;
    }
    
}