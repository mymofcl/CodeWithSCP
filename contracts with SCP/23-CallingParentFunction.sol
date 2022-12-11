//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract A{
    event contractName(string);

    function firstEvent() public returns(string memory){
        emit contractName("A1");
        return "firstEvent from A";
    }
    function secondEvent() public returns(string memory){
        emit contractName("A2");
        return "secondEvent from A";
    }
}

contract B is A{
    function firstEventFromA() public virtual returns(string memory){
        return A.firstEvent();
    }
    function secondEventFromA() public virtual returns(string memory){
        return A.secondEvent();
    }
}
contract C is A{
    function firstEventFromA() public virtual returns(string memory){
        return super.firstEvent();
    }
    function secondEventFromA() public virtual returns(string memory){
        return super.secondEvent();
    }
}
contract D is C,B{
    function firstEventFromA() public override(B,C) returns(string memory){
        return super.firstEvent();
    }
    function secondEventFromA() public override(C,B) returns(string memory){
        return super.secondEvent();
    }
}