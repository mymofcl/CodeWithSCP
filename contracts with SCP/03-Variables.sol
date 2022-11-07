//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract Variables{
    //State Variables
    uint public id = 42;
    string public batchName = "Spring 2017";
    //Local Variables
    function random() public pure{
        uint demo1 = 123;
        string memory demo2 ="Demo 2";
        demo2 = "Updated Demo 2";
        demo1 +=1;
    }
    //Global variables
    uint public time = block.timestamp;
    uint public bNum = block.number;
    address public owner = msg.sender;
}