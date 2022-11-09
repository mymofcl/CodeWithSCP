//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract Immutavility{
    address public constant originator = 0xe72038Cc6f181a1Ef4cCb98e020B45D2bE8E7e9d;
    address public immutable currentOwner;
    uint public immutable blockTime;
    uint public toralTraded = block.number;

    constructor(){
        currentOwner = msg.sender;
        blockTime = block.timestamp;        
    }

}