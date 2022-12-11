//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;


contract Parent{
    function Somebody() public pure virtual returns (string memory){
        return "Somebody from Parent";
    }
    function Nobody() public pure returns (string memory){
        return "Nobody from Parent";
    }
    function Everybody() public pure virtual returns (string memory){
        return "Everybody from Parent";
    }    
}

contract Child is Parent{
    function Somebody() public pure virtual override returns (string memory){
        return "Somebody from Child";
    }
    function Everybody() public pure virtual override returns (string memory){
        return "Everybody from Child";
    }    
}

contract GrandChild is Parent, Child { 
    function Everybody() public pure override(Parent, Child) returns (string memory){
        return "Everybody from GrandChild";
    }
    function Somebody() public pure  override(Child, Parent) returns (string memory){
        return super.Somebody();
    }
}

