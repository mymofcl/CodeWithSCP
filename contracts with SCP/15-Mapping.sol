//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract Mapping{
    //Simple Mapping
    mapping(address => uint) public balance;
    //Iterable Mapping
    mapping(address=>bool) public isExist;
    address[] public addressList;
    //Nested Mapping
    mapping(address => mapping(address => bool)) public status;

    //Testing Simple Mapping
    function simpleMapping(address _add, uint _value) public {
        balance[_add] = _value;
    }
    //Testing Nested Mapping
    function nestedMapping(address _add1,address _add2, bool _status) public{
        status[_add1][_add2] = _status;
    }
    //Testing Itetable Mapping
    function iterableMapping(address _add, uint _value) public{
        if(!isExist[_add]){
            balance[_add] = _value;
            isExist[_add] = true;
            addressList.push(_add);
        }
        else{
            balance[_add] +=_value;
        }
    }

    function getFullList() public view returns(address[] memory){
        return addressList;
    }

}