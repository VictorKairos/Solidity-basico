/*	Comentarios sobre lo que el contracto realiza */
/*
 * 	Nombre: proyecto10.sol
 *	Version:	v0.1
 *	Autor:	Jorge Martin
 *	Fecha:	noviembre 2017
 *	Descripcion:		Calculadora - Calculadora.sol
 *
 */

/* Declaracion pragma */

pragma solidity ^0.4.0;

contract Calculator {
    Math math = new Math();
    
    function twoPlusFour() constant returns (int) {
        return math.add(2,4);
    }
    function twoTimesFour() constant returns (int) {
        return math.multiply(2,4);
    }
}

contract Math {
    function add(int a, int b) returns (int) {
        return a + b;
    }
    
    function multiply (int a, int b) returns(int) {
        return a * b;
    }
    
}
