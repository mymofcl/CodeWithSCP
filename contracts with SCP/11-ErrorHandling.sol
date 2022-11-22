//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract ErrorHandling{
    uint public value;
    constructor(uint _x){
        value = _x;
    }
    //Require, Revert, Assert

    //Testing Require
    function testRequire() public view {
        require(value<=20, "Value is GRATER than 20");
    }

    //Testing Revert
    function testRevert() public view {
        if(value>5){
            if(value>20){
                revert("Value is GRATER than 20");
            }
        }
    }

    //Testing Assert
    function testAssert() public view {
        assert(value<20);
    }

    function incValue() public{
        value++;
    }

}