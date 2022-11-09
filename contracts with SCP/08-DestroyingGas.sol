//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract DestroyingGas{
    uint public i = 1;

    function infinite() public{
        while(true){
            i++;
        }
    }
}