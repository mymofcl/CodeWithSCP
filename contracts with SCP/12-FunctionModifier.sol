//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract FunctionModifier{
    //State Variables
    address public owner;
    uint public value;
    bool public status;

    //Assigning State variable
    constructor(uint _x){
        owner = msg.sender;
        value = _x;
    }
    //Basic Parts
    modifier onlyOwner(){
        require(owner == msg.sender, "Not Owner");
        _;
    }

    //With Input Parts
    modifier transferOwner(address _newAddress){
        require(_newAddress != address(0), "Not Valid Owner");
        _;
    }

    function changeOwnership(address _newOwner) public onlyOwner transferOwner(_newOwner){
        owner = _newOwner;
    }

    modifier useingStatus(){
        require(!status, "Inappropriate Circumstances");
        status = true;
        _;
        status = false;
    }


    function DecValue() public onlyOwner useingStatus{
        require(value>=1,"All your given value disrupted");
        value--;

    }
}