//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract Enums{
    enum employmentStatus{
        Unemployed, Employed
    }
    employmentStatus public status;
    constructor(){
        status = employmentStatus.Unemployed;
    }
    function getFired() public{
        require(status == employmentStatus.Employed, "You are already Unemployed Person");
        status = employmentStatus.Unemployed;
    }
    function getHired() public{
        require(status == employmentStatus.Unemployed, "You are currently doing a job, Don't break the work ethics!!");
        status = employmentStatus.Employed;
    }
}