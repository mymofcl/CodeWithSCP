//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

// There are three approaches to call the
//  constructor function of parent contract
//  from the child contract

// Parent Contracts
contract FirstName{
    string fstName;
    constructor(string memory _firstName){
        fstName = _firstName;
    }
    function firstName() public view returns(string memory){
        return fstName;
    }
}

contract LastName{
    string lstName;
    constructor(string memory _lastName){
        lstName = _lastName;
    }
    function lastName() public view returns(string memory){
        return lstName;
    }
}

// First Approach
contract FullName1 is FirstName("Yasin"), LastName("Mollah"){}

// Second Approach
contract FullName2 is FirstName, LastName{
    constructor(string memory _fName, string memory _lName) FirstName(_fName) LastName(_lName){}
}

// Third Approach
contract FullName3 is FirstName("Yasin"), LastName{
    constructor(string memory _lName) LastName(_lName){}
}