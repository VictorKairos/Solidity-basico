/*	Comentarios sobre lo que el contracto realiza */
/*
 * 	Nombre: proyecto5.sol
 *	Version:	v0.1
 *	Autor:	Jorge Martin
 *	Fecha:	noviembre 2017
 *	Descripcion:		Modificadores - Modificadores.sol
 *                Solo el owner del contrato puede cambiar la palabra word
 *
 */

/* Declaracion pragma */

pragma solidity ^0.4.0;

contract HelloWorldContract {
    string word = 'Hello World';
    address owner;
    
    function HelloWorldContract(){
        owner = msg.sender;
    }
    
    modifier onlyOwner {
        if(owner != msg.sender){
            throw;    //que pare y no cambie por no ser el owner
        }else{
            _;        //que continue la ejecucion del contrato se pone asi
        }
    }
    
    function getWord() constant returns(string) {
        return word;
    }
    
    function setWord(string newWord) onlyOwner returns (string){
        word = newWord;
        return "Ha sido cambiado el string word";
    }
}
