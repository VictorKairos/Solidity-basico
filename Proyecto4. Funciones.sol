/*	Comentarios sobre lo que el contracto realiza */
/*
 * 	Nombre: proyecto4.sol
 *	Version:	v0.1
 *	Autor:	Jorge Martin
 *	Fecha:	noviembre 2017
 *	Descripcion:		Funciones - Funciones.sol
 *
 */

pragma solidity ^0.4.0;

contract Functions {
    
    string public text = '';
    int numerOfChanges = 0;
    
    function changToHello(){
        numerOfChanges +=1;
        text = 'Hello World';  
    }
    
    function callChangeToHello(){
        changToHello();
        
        if(numerOfChanges == 2){
            changeToBuy();    
        }
        
    }
    
    function changeToBuy(){
        numerOfChanges +=1;
        text = 'Bye';
    }
}
