/*	Comentarios sobre lo que el contracto realiza */
/*
 * 	Nombre: proyecto2.sol
 *	Version:	v0.1
 *	Autor:	Jorge Martin
 *	Fecha:	noviembre 2017
 *	Descripcion:		Owner - Owner.sol
 *
 */

/* Declaracion pragma */

pragma solidity ^0.4.0;

/* Declaracion el contrato */

contract HelloWordContract {
    
    /* declaracion de variables */
    string word = 'Hello Word';
    address owner;
    
    /* declaracion de funcion principal, de nombre igual que el contrato */
    function HelloWordContract (){
        owner = msg.sender;
        
    }
    
   /* declaracion de resto de funciones: en este caso, para get y set la palabra, solo si eres ower, puede cambiar la palabra */
   function getWord() constant returns (string) {
        return word;
    }
    
    function setWord(string newWord) returns (string) {
        if(owner != msg.sender){
            return "No eres el creador del contrato";
        }
        
        word = newWord;
        return "Si eres el creador del contrato";
    }
   
}

/* Ahora todo el tiron */

pragma solidity ^0.4.0;

contract HelloWordContract {
    string word = 'Hello Word';
    address owner;
    
    function HelloWordContract (){
        owner = msg.sender;
        
    }
    
    function getWord() constant returns (string) {
        return word;
    }
    
    function setWord(string newWord) returns (string) {
        if(owner != msg.sender){
            return "No eres el creador del contrato";
        }
        
        word = newWord;
        return "Si eres el creador del contrato";
    }
    
}
