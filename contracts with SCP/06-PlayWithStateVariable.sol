//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract PlayWithStateVariable{
    //Creating State Variable
    string public name;
    uint public id;
    constructor(uint _id, string memory _name){
        id = _id;
        name = _name;
    }

    function updateInfo(uint _id, string memory _name) public{
        id = _id;
        name = _name;
    }
    function getInfo() public view returns(uint,string memory){
        return (id,name);
    }
}