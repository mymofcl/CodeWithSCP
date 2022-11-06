//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract HelloWorld{
    string public welcomeMessage;
    constructor(string memory _message){
        welcomeMessage = _message;
    }
}