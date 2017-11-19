/*	Comentarios sobre lo que el contracto realiza */
/*
 * 	Nombre: proyecto11.sol
 *	Version:	v0.1
 *	Autor:	Jorge Martin
 *	Fecha:	noviembre 2017
 *	Descripcion:		PayCheck - PayCheck.sol
 *
 */

/* Declaracion pragma */
pragma solidity ^0.4.0;

contract PayCheck {
    //direcciones de ejemplo
    address [] employees =[0xca35b7d915458ef540ade6068dfe2f44e8fa733c,0x14723a09acff6d2a60dcdf7aa4aff308fddc160c,0x4b0897b0513fdc7c541b6d9d7e929c4e5364d2db,0x583031d1113ad414f02576bd6afabfb302140225,0xdd870fa1b7c4700f2bd7f44238821c26f7392148];
    
    uint totalReceived = 0;
    
    mapping (address => uint) withdrawAmounts;
    
    function withdraw() canWithdraw {
        uint amountAllocated = totalReceived / employees.length;
        uint amountWithdrawn = withdrawAmounts[msg.sender];
        uint amount = amountAllocated - amountWithdrawn;
        withdrawAmounts[msg.sender] = amountWithdrawn + amount;
        
        if(amount > 0){
            msg.sender.transfer(amount);
        }
    }
    
    function PayCheck() payable {
        updateTotal();
        
        
    }
    
    function () payable {
        updateTotal();
    }
    function updateTotal() internal {
        totalReceived += msg.value;
    }
    modifier canWithdraw(){
        bool contains = false ;
        for(uint i = 0; i < employees.length; i++) {
            if(employees[i] == msg.sender){
                contains = true;
            }
        }
        require(contains);
        _;
        
    }
    
}
