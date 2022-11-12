//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;


contract Iteration{
    uint[] private value = [0,1,2,3,4,5,6,7,8,9];
    uint public result;
    //Function for checking for loop
    function forLoop() public {
        result=0;
        for(uint i=0;i<value.length;i++){
            if(i==3){
                continue;
            }else if(i==6){
                break;
            }
            result++;
        }
    }
    //Function for checking while loop
    function whileLoop() public{
        result=0;
        while(result<value.length){
            result++;
        }
    }

}