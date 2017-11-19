/*	Comentarios sobre lo que el contracto realiza */
/*
 * 	Nombre: proyecto12.sol
 *	Version:	v0.1
 *	Autor:	Jorge Martin
 *	Fecha:	noviembre 2017
 *	Descripcion:		Struct - Struct.sol
 *
 */
 
/* Declaracion pragma */

pragma solidity ^0.4.0;

contract Seminar {
    
    struct Person {
        string name;
        uint age;
        bool active;
    }
    
    uint fee;
    uint loss = 80;
    
    mapping (address=>Person) public attendants;
    
    function Register(string _name, uint _age) payable {
        if(msg.value == fee){
            attendants[msg.sender] = Person({
                name: _name,
                age: _age,
                active: true
            });
        }else{
            throw;
        }
    }
    
    function setRegistrationFee (uint _fee){
        fee = _fee;
    }
    function cancelRegistration(){
        attendants[msg.sender].active = false;
        msg.sender.transfer((fee*loss)/100);
    }
}
 
