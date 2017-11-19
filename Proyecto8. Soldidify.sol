/*	Comentarios sobre lo que el contracto realiza */
/*
 * 	Nombre: proyecto8.sol
 *	Version:	v0.1
 *	Autor:	Jorge Martin
 *	Fecha:	noviembre 2017
 *	Descripcion:		Soldidify - Soldidify.sol
 *
 */

/* Declaracion pragma */
contract SolidityKnowLadge {
    
    string word;
    uint number;
    address owner;
    
    function SolidityKnowLadge(string _word){
        word = _word;
        number = 42;
        owner = msg.sender;
    }
    
    event Changed(address a);
    
    modifier onlyOwner {
        require (msg.sender == owner);
        _;
    }
    
    function getWord() constant returns (string) {
        return word;
    }
    
    function setWord(string w) onlyOwner {
        word = w;
        Changed(msg.sender);
    }
    
}
