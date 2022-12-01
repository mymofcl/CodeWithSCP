//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract FunctionOutputs{
    //Return Multiple Outpurs
    function retMulti() public pure returns(uint, bool){
        return (123, true);
    }

    //Named Outputs
    function Named() public pure returns(uint _x, bool _y){
        return (456, false);
    }

    //Destructing Assigned
    function Assigned() public pure returns(uint _x, bool _y){
        _x = 789;
        _y = true;
    }
    function DestructedAssign() public pure {
        (, bool _b) = retMulti();
        
    }

}