/*	Comentarios sobre lo que el contracto realiza */
/*
 * 	Nombre: proyecto3.sol
 *	Version:	v0.1
 *	Autor:	Jorge Martin
 *	Fecha:	noviembre 2017
 *	Descripcion:		GetterSetter - GetterSetter.sol
 *
 */

/* Igual que el proyecto 2, pero sin owner */

pragma solidity ^0.4.0;

contract HelloWordContract {
    string word = 'Hello Word';
    
    function HelloWordContract (){
        
    }
    
    function getWord() constant returns (string) {
        return word;
    }
    
    function setWord(string newWord) returns (string) {
        word = newWord;
        return word;
    }
    
}
