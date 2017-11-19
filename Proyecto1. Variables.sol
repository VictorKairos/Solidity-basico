/*	Comentarios sobre lo que el contracto realiza */
/*
 * 	Nombre: proyecto1.sol
 *	Version:	v0.1
 *	Autor:	Jorge Martin
 *	Fecha:	noviembre 2017
 *	Descripcion:		Variables - Variables.sol
 *
 */

/* Declaracion pragma */

pragma solidity ^0.4.0;

/* Declaracion el contrato */

contract Variables {
    
    /* declaracion de variables 
    tipo texto publica con su nombre */
      string public one = 'one';  
    /* tipo texto PRIVADA QUE NO SE PONE LA PALABRA con su nombre  */
      string two = 'two';     
    
    /*tipo entero publica con su nombre y se puede poner negativo y le iniciamos con valor, no obligartorio */
      int public three = 3;
    /*tipo unsigned integer publica con su nombre y NO se puede poner negativo  */
      uint public four = 4;
    
    /* tipo direccion de wallet con nombre, privado */
      address myAddress = 0xca35b7d915458ef540ade6068dfe2f44e8fa733c;
   
}

/* Ahora todo el tiron */

pragma solidity ^0.4.0;

contract Variables {
    
    string public one = 'one';  //publica
    string two = 'two';         //privada
    int public three = 3;
    uint public four = 4;
    address myAddress = 0xca35b7d915458ef540ade6068dfe2f44e8fa733c;
}
