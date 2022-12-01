//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract Arrays{
    //Dynamic or fixed
    //Dynamic
    uint[] public numbers = [1,2,3,4,5,6,7,8,9,10];

    //Creating Array in memory
    function arrayInMemory(uint[] memory _arr) public pure returns(uint[] memory){
        uint[] memory series = new uint[](_arr.length);
        for(uint i=0; i<_arr.length;i++){
            series[i] = _arr[i];
        }
        return series;
    }
    //Return Array from Function
    function retArray() public view returns(uint[] memory){
        return numbers;
    }
    //CRUD Operations

    //Insert, Update, delete
    function crudArray(uint _insert, uint _uIndex, uint _uValue, uint _dIndex) public{
        //Insert
        numbers.push(_insert);
        //Update
        numbers[_uIndex] = _uValue;
        //Delete
        require(_dIndex<numbers.length,"To be deleted index is grater than the array length");
        delete numbers[_dIndex];
    }
    function popping() public{
        numbers.pop();
    }

    //Deleting Element by shifting
    function deleteByShifting(uint _index) public{
        require(_index<numbers.length, "To be deleted index is grater than the array length");
        for(uint i = _index;i<numbers.length-1;i++){
            numbers[i]=numbers[i+1];
        }
        numbers.pop();
    }
    //Deleting Element by Replacing Last
    function deleteByReplacingLast(uint _index) public{
        require(_index<numbers.length, "To be deleted index is grater than the array length");
        numbers[_index] = numbers[numbers.length-1];
        numbers.pop();
    }    
}