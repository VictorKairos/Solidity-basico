/*	Comentarios sobre lo que el contracto realiza */
/*
 * 	Nombre: proyecto6.sol
 *	Version:	v0.1
 *	Autor:	Jorge Martin
 *	Fecha:	noviembre 2017
 *	Descripcion:		Payable. - Payable.sol
 *
 */

/* Declaracion pragma */

pragma solidity ^0.4.0;

contract PayableContract {
    
    function PayableContract(){
        
    }
    
    //recibir dinero
    function receiveFunds() payable {
        
    }
    
    //consultar balance
    function getBalance() constant returns (uint) {
        return this.balance;
    }
}
