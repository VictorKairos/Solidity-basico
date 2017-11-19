/*	Comentarios sobre lo que el contracto realiza */
/*
 * 	Nombre: proyecto7.sol
 *	Version:	v0.1
 *	Autor:	Jorge Martin
 *	Fecha:	noviembre 2017
 *	Descripcion:		Comunicaciones - Comunicaciones.sol
 *
 */

/* Declaracion pragma */

pragma solidity ^0.4.0;

contract CallerContract {
    CalledContract toBeCalled = new CalledContract ();
    
    function getNumer () constant returns(uint) {
        return toBeCalled.getNumer();
    }
    
}

contract CalledContract {
    uint number = 300;
    
    function getNumer() constant returns(uint){
        return number;
    }
}
