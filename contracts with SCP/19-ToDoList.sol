//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;
 contract ToDoList{
     struct haveTODO{
         string activity;
         bool done;
     }

     haveTODO[] public todo;
    
    function addTask(string memory _activity, bool _done) public{
        todo.push(haveTODO(_activity,_done));
    }
    function toggleStatus(uint _index) public {
        todo[_index].done = !todo[_index].done;
    }
    function getToDoList() public view returns(haveTODO[] memory){
        return todo;
    }
 }