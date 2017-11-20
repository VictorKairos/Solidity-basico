/*	Comentarios sobre lo que el contracto realiza */
/*
 * 	Nombre: proyecto13.sol
 *	Version:	v0.1
 *	Autor:	Jorge Martin
 *	Fecha:	noviembre 2017
 *	Descripcion:		Savings - Savings.sol
 *
 */

/* Declaracion pragma */

pragma solidity ^0.4.0;

contract Savings {
    address owner;
    
    event UpdateStatus(string msg);
    event UserStatus (string _msg, address user, uint amount);
    
    function Savings() {
        owner = msg.sender;
    }
    modifier onlyOwner() {
        if (owner != msg.sender){
            throw;
        }else{
            _;
        }
    }
    
    function Kill () onlyOwner {
        suicide (owner);
    }
    //cualquiera puede poner dinero
    function depositFunds(uint amount) payable {
        if (owner.send(amount)) {
            UserStatus ("User has deposit money", msg.sender, msg.value);
        }
    }
    
    function withdrawFunds (uint amount) onlyOwner {
        if(owner.send(amount)){
            UpdateStatus ("User Widthdraw some money");
        }
    }
    function getFunds() onlyOwner constant returns(uint) {
        return this.balance;
    }
}
