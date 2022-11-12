//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract ConditionChecking{

    function binaryCondition(uint _age) public pure returns(string memory){
        string memory status;
        if(_age<10){
            status = "Child! Not Allowed";
        }else if(_age<20){
            status = "Teenager! Partially Allowed";
        }else{
            status = "Adult! Fully Allowed";
        }
        return status;   
    }

    function ternaryCondition(uint _age) public pure returns(string memory){
        return _age<20? _age<10? "Child! Not Allowed" : "Teenager! Partially Allowed" : "Adult! Fully Allowed";
    }

}