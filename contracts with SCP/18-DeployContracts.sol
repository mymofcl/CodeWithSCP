//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract TestContract1{
    address public owner = msg.sender;
    function setOwner(address _owner) public{
        require(owner == msg.sender, "Not Owner");
        owner = _owner;
    }
}

contract TestContract2{
    address public owner = msg.sender;
    uint public value = msg.value;
    uint public x;
    uint public y;
    constructor(uint _x, uint _y){
        x = _x;
        y = _y;
    }
}

contract Proxy{
    event Deploy(address);
    fallback() external payable {}
    function deploy(bytes memory _code) public payable returns(address addr){
        assembly{
            //Create (V,P,N)
            // v = amount of ETH to Send
            // p = pointer of memory to start of code
            // n = size of codes
            addr := create(callvalue(), add(_code,0x20), mload(_code))
        }
        require(addr != address(0), "Deploy Failed");
        emit Deploy(addr);
    }

    function execute(address _target, bytes memory _data) public payable{
        (bool success, ) = _target.call{value:msg.value}(_data);
        require(success,"Failed");
    }
}

contract helper{
    function getByteCode() public pure returns(bytes memory){
        bytes memory bytecode = type(TestContract1).creationCode;
        return bytecode;
    }
     function getByteCode2(uint _x, uint _y) public pure returns(bytes memory){
        bytes memory bytecode = type(TestContract2).creationCode;
        return abi.encodePacked(bytecode, abi.encode(_x,_y));
    }
    function getCallData(address _owner) public pure returns(bytes memory){
        return abi.encodeWithSignature("setOwner(address): ", _owner);
    }
}